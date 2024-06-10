//
//  WordStore.swift
//  pocketdict
//
//  Created by Feiyang Tang on 10/06/2024.
//

import Foundation

class WordStore: ObservableObject {
    @Published var words: [Word] = []
    
    init() {
        load()
    }
    
    func add(word: Word) {
        words.append(word)
        save()
    }
    
    func save() {
        if let encoded = try? JSONEncoder().encode(words) {
            UserDefaults.standard.set(encoded, forKey: "words")
        }
    }
    
    func load() {
        if let savedWords = UserDefaults.standard.data(forKey: "words") {
            if let decodedWords = try? JSONDecoder().decode([Word].self, from: savedWords) {
                words = decodedWords
            }
        }
    }
}
