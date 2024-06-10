//
//  Word.swift
//  pocketdict
//
//  Created by Feiyang Tang on 10/06/2024.
//

import Foundation

struct Word: Identifiable, Codable {
    var id = UUID()
    var native: String
    var foreign: String
    var article: String
    var type: String
}
