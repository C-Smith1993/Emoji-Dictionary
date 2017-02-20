//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Chris Smith on 19/02/2017.
//  Copyright © 2017 CDSApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojiIcons: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        emojiIcons = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiIcons.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojiIcons[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojiIcons[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defViewController = segue.destination as! DefinitionViewController
        defViewController.emojiIcon = sender as! Emoji
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😃"
        emoji1.birthYear = 2010
        emoji1.category = "Smileys & People"
        emoji1.definition = "Happy Face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🙃"
        emoji2.birthYear = 2010
        emoji2.category = "Smileys & People"
        emoji2.definition = "Upside Down Face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "👌"
        emoji3.birthYear = 2010
        emoji3.category = "Hand signs"
        emoji3.definition = "Okay hand sign"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👓"
        emoji4.birthYear = 2010
        emoji4.category = "Items"
        emoji4.definition = "A pair of sunglasses"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🎵"
        emoji5.birthYear = 2010
        emoji5.category = "Symbols"
        emoji5.definition = "A music note"
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5]
    }
}










































