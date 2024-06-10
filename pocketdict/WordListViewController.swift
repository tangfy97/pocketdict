//
//  WordListViewController.swift
//  pocketdict
//
//  Created by Feiyang Tang on 10/06/2024.
//

import UIKit

class WordListViewController: UITableViewController {
    var wordStore = WordStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Word List"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "WordCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wordStore.words.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = wordStore.words[indexPath.row]
        cell.textLabel?.text = "\(word.native) - \(word.foreign) (\(word.article)) [\(word.type)]"
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddWordSegue" {
            let destination = segue.destination as! AddWordViewController
            destination.wordStore = wordStore
        }
    }
}

