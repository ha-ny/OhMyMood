//
//  AddViewController.swift
//  OhMyMood
//
//  Created by 김하은 on 2023/07/26.
//

import UIKit
import SnapKit

class AddViewController: UIViewController {

    let titeLabel = {
        let view = UILabel()
        view.text = "OH MY MOOD"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 17)
        return view
    }()
    
    let happyButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "emoji1"), for: .normal)
        view.backgroundColor = UIColor(red: 248/255, green: 106/255, blue: 140/255, alpha: 1)
        view.tag = 0
        return view
    }()
    
    let goodButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "emoji2"), for: .normal)
        view.backgroundColor = UIColor(red: 248/255, green: 220/255, blue: 136/255, alpha: 1)
        view.tag = 1
        return view
    }()
    
    let sosoButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "emoji3"), for: .normal)
        view.backgroundColor = UIColor(red: 248/255, green: 250/255, blue: 184/255, alpha: 1)
        view.tag = 2
        return view
    }()
    
    let sadButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "emoji4"), for: .normal)
        view.backgroundColor = UIColor(red: 204/255, green: 240/255, blue: 225/255, alpha: 1)
        view.tag = 3
        return view
    }()
    
    let badButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "emoji5"), for: .normal)
        view.backgroundColor = UIColor(red: 46/255, green: 103/255, blue: 154/255, alpha: 1)
        view.tag = 4
        return view
    }()
    
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviewAndConstraints()
    }

    @objc func emotionButtonClick(sender: UIButton){
        count = UserDefaults.standard.integer(forKey: "\(Emotion(rawValue: sender.tag)!)")
        UserDefaults.standard.set(count + 1, forKey: "\(Emotion(rawValue: sender.tag)!)")
    }
}

extension AddViewController {
    
    func addSubviewAndConstraints(){
        
        view.addSubview(titeLabel)
        
        [happyButton, goodButton, sosoButton, sadButton, badButton].forEach {
            view.addSubview($0)
            $0.addTarget(self, action: #selector(emotionButtonClick), for: .touchUpInside)
            
            $0.snp.makeConstraints { make in
                make.horizontalEdges.equalToSuperview()
                make.height.equalTo(view.snp.height).multipliedBy(0.173)
            }
        }
        
        titeLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(45)
        }
        
        happyButton.snp.makeConstraints { make in
            make.top.equalTo(titeLabel.snp.bottom)
        }
        
        goodButton.snp.makeConstraints { make in
            make.top.equalTo(happyButton.snp.bottom)
        }
        
        sosoButton.snp.makeConstraints { make in
            make.top.equalTo(goodButton.snp.bottom)
        }
        
        sadButton.snp.makeConstraints { make in
            make.top.equalTo(sosoButton.snp.bottom)
        }
        
        badButton.snp.makeConstraints { make in
            make.top.equalTo(sadButton.snp.bottom)
        }
    }
}
