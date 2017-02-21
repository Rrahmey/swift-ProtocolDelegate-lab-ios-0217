//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var leftEmojiTextBox: UITextField!
    @IBOutlet weak var rightEmojiTextBox: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    @IBAction func saveButtonTap(_ sender: Any) {
        let leftEmoji = leftEmojiTextBox.text
        let rightEmoji = rightEmojiTextBox.text
        var newTuple = ("","")
        if let leftEmojis = leftEmoji {
            if let rightEmojis = rightEmoji {
              newTuple = (leftEmojis, rightEmojis)
            }
        }
        emojiDelegate?.create(emojiGroup: newTuple)
        dismiss(animated: true, completion: nil)
    }
    
    
}
