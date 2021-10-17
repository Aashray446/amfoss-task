// C++ code

// LED PINS
  int park_1_av = 13;
  int park_2_av = 3;
  int park_1_oc = 12;
  int park_2_oc = 4;
// Ultrasonic PINS
  int trig_1_us = 6;
  int trig_2_us = 5;
void setup()
{
  //SETUP PINS TO OUTPUT MODE 
  pinMode(park_1_av, OUTPUT); 
  pinMode(park_2_av, OUTPUT); 
  pinMode(park_1_oc, OUTPUT); 
  pinMode(park_2_oc, OUTPUT); 
  // starting the 9600 baud interface
  Serial.begin(9600);
}

void loop(){
  // FOR PARKING SLOT 1
  if(is_occupied(trig_1_us)) {
    digitalWrite(park_1_oc,HIGH);
    digitalWrite(park_1_av,LOW);
    
  }
  else{
    digitalWrite(park_1_av,HIGH);
    digitalWrite(park_1_oc,LOW);
  }
  // FOR PARKING SLOT 2
  if(is_occupied(trig_2_us)) {
    digitalWrite(park_2_oc,HIGH);
    digitalWrite(park_2_av,LOW);
    
  }
  else{
    digitalWrite(park_2_av,HIGH);
    digitalWrite(park_2_oc,LOW);
  }
}

// CHECKING THE AVAIBILITY
bool is_occupied(int sensor_pin) {
  int d_in_cm = 0.01723 * readUltrasonicDistance(sensor_pin);
  if (d_in_cm < 300) {
    return true;
  }
  else {
    return false;
  }
}
// GETTING THE SENSOR DATA
// ALGO SOURCE GOOGLE
long readUltrasonicDistance(int pin)
{
  pinMode(pin, OUTPUT);  // Clear the trigger
  digitalWrite(pin, LOW);
  delayMicroseconds(2);
  // Sets the trigger pin to HIGH state for 10 microseconds
  digitalWrite(pin, HIGH);
  delayMicroseconds(10);
  digitalWrite(pin, LOW);
  pinMode(pin, INPUT);
  // Reads the echo pin, and returns the sound wave travel time in microseconds
  return pulseIn(pin, HIGH);
}