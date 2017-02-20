//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Chris Smith on 20/02/2017.
//  Copyright © 2017 CDSApps. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
   var emojiIcon = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emojiIcon.stringEmoji
        birthYearLabel.text = "Year of Birth \(emojiIcon.birthYear)"
        categoryLabel.text = "Category: \(emojiIcon.category)"
        definitionLabel.text = emojiIcon.definition
        
        definitionLabel.textColor = .blue
        categoryLabel.textColor = .red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
