//
//  AddWordViewController.swift
//  pocketdict
//
//  Created by Feiyang Tang on 10/06/2024.
//

import UIKit

class AddWordViewController: UIViewController {
    @IBOutlet weak var nativeTextField: UITextField!
    @IBOutlet weak var foreignTextField: UITextField!
    @IBOutlet weak var articleTextField: UITextField!
    @IBOutlet weak var typeTextField: UITextField!

    var wordStore: WordStore?

    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let native = nativeTextField.text, !native.isEmpty,
              let foreign = foreignTextField.text, !foreign.isEmpty,
              let article = articleTextField.text, !article.isEmpty,
              let type = typeTextField.text, !type.isEmpty else {
            // Show an error message
            return
        }

        let newWord = Word(native: native, foreign: foreign, article: article, type: type)
        wordStore?.add(word: newWord)
        navigationController?.popViewController(animated: true)
    }
}

