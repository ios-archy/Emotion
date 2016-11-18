//
//  ViewController.swift
//  Emotion
//
//  Created by archy on 16/11/18.
//  Copyright © 2016年 archy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextView: UITextView!
    
    private lazy var emotionVC : EmotionController = EmotionController()
    override func viewDidLoad() {
        super.viewDidLoad()
        TextView.inputView = emotionVC.view
        
        
        let manager = EmoticonManager()
        for package in manager.packages
        {
            for emoticon in package.emoticons {
            print(emoticon)
                
            }
        }
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        TextView.becomeFirstResponder()
    }

}

