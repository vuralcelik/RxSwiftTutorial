//
//  WorkModel.swift
//  RxSwiftTutorial
//
//  Created by Vural Çelik on 4.11.2020.
//

import Foundation

struct WorkModel: Decodable {
    var id: String?
    var text: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case text
    }
    
    init() {

    }
}
