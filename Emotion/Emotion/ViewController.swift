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
    
    private lazy var emotionVC : EmotionController = EmotionController {[weak self] (emoticon) -> () in
       self?.TextView.insertEmoticon(emoticon)
    }

    @IBAction func SenderClick(sender: AnyObject) {
        
        print(TextView.getEmoticonString())
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        TextView.inputView = emotionVC.view
        TextView.text  = ""

    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        TextView.becomeFirstResponder()
    }

}

