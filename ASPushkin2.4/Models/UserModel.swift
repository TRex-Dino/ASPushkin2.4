//
//  UserModel.swift
//  ASPushkin2.4
//
//  Created by Dmitry on 03.04.2021.
//

struct User {
    let userName: String
    let password: String
    let userInfo: Person
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let cityBurn: String
    let hobby: String
}
