//
//  BackEndDataModel.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

import Foundation


struct BackEndUserModel {
    let user: String
    let password: String
    let name: String
    let secondname: String
    let mail: String
    let phone: Int
}

struct BackEndUsersGroup {
    static let users: [BackEndUserModel] = [
        BackEndUserModel(user: "Tom01",
                         password: "1234",
                         name: "Tom",
                         secondname: "Cruise",
                         mail: "Tom.Cruise@mail.ru",
                         phone: 77766664455),
        BackEndUserModel(user: "Tom02",
                         password: "1234",
                         name: "Tom",
                         secondname: "Cruise",
                         mail: "Tom.Cruise@mail.ru",
                         phone: 77766664455),
        BackEndUserModel(user: "Tom03",
                         password: "1234",
                         name: "Tom",
                         secondname: "Cruise",
                         mail: "Tom.Cruise@mail.ru",
                         phone: 77766664455)
    ]
}

