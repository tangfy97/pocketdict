//
//  SentenceViewController.swift
//  pocketdict
//
//  Created by Feiyang Tang on 10/06/2024.
//

import UIKit

class SentenceViewController: UIViewController {
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var sentenceTextView: UITextView!

    var wordStore: WordStore?

    override func viewDidLoad() {
        super.viewDidLoad()
        loadRandomWord()
    }

    func loadRandomWord() {
        guard let words = wordStore?.words, !words.isEmpty else { return }
        let randomWord = words.randomElement()!
        wordLabel.text = "\(randomWord.native) - \(randomWord.foreign)"
    }

    @IBAction func saveSentenceButtonTapped(_ sender: Any) {
        // Implement saving the sentence
    }
}

