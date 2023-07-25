//
//  AddViewController.swift
//  OhMyMood
//
//  Created by 김하은 on 2023/07/26.
//

import UIKit

class AddViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func emotionButtonClick(_ sender: UIButton) {
        let key = Emotion(rawValue: sender.tag)!
        emotionDic.updateValue(emotionDic[key]! + 1 , forKey: key)
        print(emotionDic[key]!)
    }
}
