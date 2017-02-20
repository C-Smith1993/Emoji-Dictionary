//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Chris Smith on 20/02/2017.
//  Copyright © 2017 CDSApps. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
   var emojiIcon = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emojiIcon
        
        if emojiIcon == "😃" {
            definitionLabel.text = "Feeling happy!"
        }
        
        if emojiIcon == "😴" {
            definitionLabel.text = "Feeling sleepy..."
        }
        
        if emojiIcon == "👌" {
            definitionLabel.text = "It's okay."
        }
        
        if emojiIcon == "👓" {
            definitionLabel.text = "It's time to wear sunglasses."
        }
        
        if emojiIcon == "👛" {
            definitionLabel.text = "Handbag."
        }
        
        if emojiIcon == "🐹" {
            definitionLabel.text = "Hamster face!"
        }
        
        if emojiIcon == "💋" {
            definitionLabel.text = "Give me a kiss!"
        } else {
            return
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
