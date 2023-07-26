//
//  AddViewController.swift
//  OhMyMood
//
//  Created by 김하은 on 2023/07/26.
//

import UIKit

class AddViewController: UIViewController {
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func emotionButtonClick(_ sender: UIButton) {
        count = UserDefaults.standard.integer(forKey: "\(Emotion(rawValue: sender.tag)!)")
        UserDefaults.standard.set(count + 1, forKey: "\(Emotion(rawValue: sender.tag)!)")
    }
}
