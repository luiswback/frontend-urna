import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';

import {LoginComponent} from './login/login.component'
import {CadastroComponent} from "./cadastro/cadastro.component";
import {UrnaComponent} from "./urna/urna.component";

import {AuthenticatedGuard} from "./guards/authenticated.guard";
import {withoutTokenGuard} from "./guards/withoutToken.guard";
import {MenuComponent} from "./profile/profile/menu.component";
import {CadastrarCandidatoComponent} from "./cadastrar-candidato/cadastrar-candidato.component";
import {VotosParciaisComponent} from "./urna/votos-parciais/votos-parciais.component";
import {EditComponent} from "./edit/edit.component";

const routes: Routes = [
  {
    //Proteção da rota. Só usuários com token.
    path: '',
    children: [
      {path: '', redirectTo: 'login', pathMatch: 'full'},
      {path: 'login', component: LoginComponent, canActivate: [withoutTokenGuard]},
      {path: 'cadastro', component: CadastroComponent, canActivate: [withoutTokenGuard]},
      {path: 'menu', component: MenuComponent, canActivate: [AuthenticatedGuard]},
      {path: 'votação', component: UrnaComponent, canActivate: [AuthenticatedGuard]},
      {path: 'cadastro-candidato', component: CadastrarCandidatoComponent, canActivate: [AuthenticatedGuard]},
      {path: 'editar/:id', component: EditComponent, canActivate: [AuthenticatedGuard]},
      {path: 'votacao-parcial', component: VotosParciaisComponent, canActivate: [AuthenticatedGuard]},
      {path: 'logout', redirectTo: 'login'}
    ]
  }

];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {

}


