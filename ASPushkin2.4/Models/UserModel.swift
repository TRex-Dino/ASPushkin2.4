//
//  UserModel.swift
//  ASPushkin2.4
//
//  Created by Dmitry on 03.04.2021.
//

struct User {
    let userName: String
    let password: String
    let whatIlike: [String]
    let userInfo: Person
    
    static func getInfoAboutUser() -> User {
        User(
            userName: "User",
            password: "Password",
            whatIlike: ["Write", "Read", "Duels"],
            userInfo: Person(
            name: "Alexander",
            surname: "Pushkin",
            age: 37,
            cityBorn: "Moscow",
            hobby: "Writing books",
            avatar: "alex",
            poem: """
                By gates of Eden, Angel, gentle,
                Shone with his softly drooped head,
                And Demon, gloomy and resentful
                Over the hellish crevasse flapped.

                The spirit of qualm and negation
                Looked at another one – of good,
                And fire of the forced elation
                First time he vaguely understood.
                """
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let cityBorn: String
    let hobby: String
    let avatar: String
    let poem: String
}


