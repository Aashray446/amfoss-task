import { Component } from '@angular/core';
import {Router} from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Aashraya Katiyar';

  constructor(private router : Router) {}

  goto(url:string) {
    this.router.navigate([url]);
    if(url = "About") {
      
    }
  }

}
