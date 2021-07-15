//
//  ViewController.swift
//  Emojinial
//
//  Created by Rahaf Aljerwi on 5/7/21.
//  Copyright © 2021 Rahaf Aljerwi. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

 
    @IBAction func showMessage(sender: UIButton) {
        let emojis = ["😃": "happy", "😕": "bummed out"]
        let customMessages = [
            "happy" : ["keep it up", "I'm glad you're happy!"],
            "bummed out" : ["it will all be okay", "cheer up"]
        ]
        let selectedEmotion = (sender.titleLabel?.text)!
        let options = customMessages[emojis[selectedEmotion]!]!
        let emojiMessage = options[0]
        let alertController = UIAlertController(title: emojis["😃"], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

