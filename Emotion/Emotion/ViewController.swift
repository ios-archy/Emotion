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
         let statusText = "@coderwhy:【动物尖叫合辑】#肥猪流#猫头鹰这么尖叫[偷笑]、@M了个J: 老鼠这么尖叫、兔子这么尖叫[吃惊]、@花满楼: 莫名奇#小笼包#妙的笑到最后[好爱哦]！~ http://t.cn/zYBuKZ8/"
        TextView.attributedText = FindEmoticon.shareInstance.findAttrisString(statusText, font: UIFont.systemFontOfSize(14))

    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        TextView.becomeFirstResponder()
    }

}

