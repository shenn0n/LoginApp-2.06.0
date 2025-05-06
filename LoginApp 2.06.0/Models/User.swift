//
//  User.swift
//  LoginApp 2.06.0
//
//  Created by Александр Манжосов on 05.05.2025.
//

import Foundation

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "Sania",
            password: "2002",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let department: String
    let position: String
    let image: String
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Tim",
            surname: "Cook",
            company: "Apple",
            department: "Managment",
            position: "CEO",
            image: "TimCook",
            bio: "Тим Кук присоединился к компании Apple в марте 1998 года в качестве старшего вице-президента по мировым операциям, а затем занимал должность исполнительного вице-президента по мировым продажам и операциям. Кук помогал бывшему главе Apple Стиву Джобсу в течение двух месяцев в 2004 году, когда тот лечился от рака поджелудочной железы. Кук также является членом совета директоров Nike."
        )
    }
}
