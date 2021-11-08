import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { EducationComponent } from './education/education.component';
import { ExpComponent } from './exp/exp.component';
import { HomeComponent } from './home/home.component';
import { ProjectsComponent } from './projects/projects.component';
import { TestimonialsComponent } from './testimonials/testimonials.component';

const routes: Routes = [
  { component: HomeComponent, path: ''},
  {component: EducationComponent, path: 'education'},
  {component: ExpComponent, path: 'experience'},
  {component: ProjectsComponent, path: 'projects'},
  {component: TestimonialsComponent, path: 'clients'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
