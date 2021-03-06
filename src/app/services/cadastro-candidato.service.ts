import {Injectable} from "@angular/core";
import {DatabaseService} from "../core/database.service";


@Injectable({
  providedIn: 'root'
})


export class CadastroCandidatoService {

  constructor(
    private databaseService: DatabaseService
  ) {
  }

  postPresident(data, callback) {
    this.databaseService.post('/presidente', data)
      .subscribe((res) => {
        callback({data: res})
      }, (error) => {
        callback({error})
      })

  }

  postSenator(data, callback) {
    this.databaseService.post('/senador', data)
      .subscribe((res) => {
        callback({data: res})
      }, (error) => {
        callback({error})
      })

  }

  postCongressman(data, callback) {
    this.databaseService.post('/deputado-federal', data)
      .subscribe((res) => {
        callback({data: res})
      }, (error) => {
        callback({error})
      })
  }

  postStateDeputy(data, callback) {
    this.databaseService.post('/deputado-estadual', data)
      .subscribe((res) => {
        callback({data: res})
      }, (error) => {
        callback({error})
      })
  }

  postGovernor(data, callback) {
    this.databaseService.post('/governador', data)
      .subscribe((res) => {
        callback({data: res})
      }, (error) => {
        callback({error})
      })
  }


  userLogged(): boolean {
    return !!localStorage.getItem('user');  //simplificado ? false : true

  }
}
