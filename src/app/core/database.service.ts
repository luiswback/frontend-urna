import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from "@angular/common/http";
import {tap} from "rxjs";
import {environment} from "../../environments/environment";

@Injectable({providedIn: 'root'})

export class DatabaseService {

  databaseUrl = environment.api_url;

  constructor(private httpClient: HttpClient) {

  }

  createHeader(authenticated = true) {
    let token = '';
    if (authenticated) {
      token = localStorage.getItem('token');
    }
    return new HttpHeaders({
      'Authorization': 'Bearer ' + token,
    })
  }

  post(url, body, authenticated = true) {
    let header = this.createHeader(authenticated);
    return this.httpClient.post(this.databaseUrl + url, body, {headers: header})
      .pipe(tap(res => {
      }, (error) => {
      }));
  }

  get(url, params, authenticated = true) {
    let header = this.createHeader(authenticated);
    return this.httpClient.get(this.databaseUrl + url, {headers: header, params: params})
      .pipe(tap(res => {
      }, (error => {
      })));
  }

  delete(url, params, authenticated = true) {
    let header = this.createHeader(authenticated);
    return this.httpClient.delete(this.databaseUrl + url, {headers: header, params: params})
      .pipe(tap(resp => {
      }, error => {
      }));
  }

  put(url, body, authenticated = true) {
    let header = this.createHeader(authenticated);
    return this.httpClient.put(this.databaseUrl + url, body, {headers: header})
      .pipe(tap(resp => {
      }, error => {
      }));
  }

}

