//
//  ChartViewController.swift
//  OhMyMood
//
//  Created by 김하은 on 2023/07/26.
//

import UIKit

class ChartViewController: UIViewController {

    @IBOutlet var emotionViews: [UIView]!
    @IBOutlet var emotionCounts: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#function)
        desingView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
        emotionCountSetting()
    }
    
    func desingView(){
        for emotionView in emotionViews{
            emotionView.layer.cornerRadius = 8
        }
    }
    
    func emotionCountSetting(){
        for emotionCount in emotionCounts{
            emotionCount.text = String(emotionDic[Emotion(rawValue: emotionCount.tag)!] ?? 0)
        }
    }
}
