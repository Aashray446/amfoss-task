import requests;
import re as reg;

api_key = "3DPsb77zcvrGOI3zztXxVez91Xz9wGZ0jtAI4ewK"


#---------------------------------Creating the desired Url-------------------------------------
def custom_Url():
    Url = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?api_key="+api_key
    print("Enter the parameter customization you want")
    print("For,Martian Sol = 1, Camera = 2, earth_date = 0 ")
    choices = int(input())
    page_no = input("Enter the no of pages, 25 items per page")
    
    #-------------------Setting Sol param on userChoice Basis-------------------
    if(choices==1):
        print("Enter the Sol(ranges from 0 to max Found in enpoint)")
        sol = input()
        Url = Url + "&sol=" +sol

    #------------------Setting Camera param on userchoice Basis-----------------
    if(choices==2):
        print("FHAZ, RHAZ, MAST, CHEMCAM, MAHLI , MARDI, NAVCAM, PANCAM, MINITES")
        print("Enter the camera abbr from the above options")
        camera = input()
        Url = Url + "&camera="+camera

    #------------------Setting Camera param on userchoice Basis-----------------
    if(choices==0):
        print("Enter Earth Date in YYYY-MM-DD format")
        date = input()
        if reg.match("^\d{4}\-(0?[1-9]|1[012])\-(0?[1-9]|[12][0-9]|3[01])$", date):
            Url = Url + "&earth_date="+date
        else:
            print("Date format not matched, Please re-enter")
            custom_Url()

    #------------------Setting page param-------------------------------------
    Url = Url + "&page="+page_no
    return Url


#-----------------------Fetching the data using GET and returing in JSON format---------------------
def rtrn_json_data(Url):
    print("SENDING REQUEST PLEASE WAIT....")
    print(Url)
    r = requests.get(url = Url)
    return(r.json())

