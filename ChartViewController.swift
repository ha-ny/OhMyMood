//
//  ChartViewController.swift
//  OhMyMood
//
//  Created by 김하은 on 2023/07/26.
//

import UIKit
import SnapKit

class ChartViewController: UIViewController {
    
    let titeLabel = {
        let view = UILabel()
        view.text = "OH MY MOOD"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 17)
        return view
    }()
    
    let happyView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 248/255, green: 106/255, blue: 140/255, alpha: 1)
        view.layer.cornerRadius = 8
        return view
    }()
    
    let goodView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 248/255, green: 220/255, blue: 136/255, alpha: 1)
        view.layer.cornerRadius = 8
        return view
    }()
    
    let sosoView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 248/255, green: 250/255, blue: 184/255, alpha: 1)
        view.layer.cornerRadius = 8
        return view
    }()
    
    let sadView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 204/255, green: 240/255, blue: 225/255, alpha: 1)
        view.layer.cornerRadius = 8
        return view
    }()
    
    let badView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 46/255, green: 103/255, blue: 154/255, alpha: 1)
        view.layer.cornerRadius = 8
        return view
    }()

    
    let happyLabel = {
        let view = UILabel()
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 20)
        view.tag = 0
        return view
    }()
    
    let goodLabel = {
        let view = UILabel()
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 20)
        view.tag = 1
        return view
    }()
    
    let sosoLabel = {
        let view = UILabel()
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 20)
        view.tag = 2
        return view
    }()
    
    let sadLabel = {
        let view = UILabel()
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 20)
        view.tag = 3
        return view
    }()
    
    let badLabel = {
        let view = UILabel()
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 20)
        view.tag = 4
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviewAndConstraints()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        emotionCountSetting()
    }
    
    func emotionCountSetting(){
        
        [happyLabel, goodLabel, sosoLabel, sadLabel, badLabel].forEach {
            let name = EmotionStore.sheard.returnEmotionString(emotion: Emotion(rawValue: $0.tag)!)
            let score = UserDefaults.standard.integer(forKey: "\(Emotion(rawValue: $0.tag)!)")
            $0.text = "\(name)                                     \(score)점"
        }
    }
}

extension ChartViewController {
    
    func addSubviewAndConstraints(){
        
        view.addSubview(titeLabel)
        
        [happyView, goodView, sosoView, sadView, badView].forEach {
            view.addSubview($0)
            $0.snp.makeConstraints { make in
                make.horizontalEdges.equalToSuperview().inset(10)
                make.height.equalTo(view.snp.height).multipliedBy(0.1)
            }
        }
        
        happyView.addSubview(happyLabel)
        goodView.addSubview(goodLabel)
        sosoView.addSubview(sosoLabel)
        sadView.addSubview(sadLabel)
        badView.addSubview(badLabel)
        
        titeLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(45)
        }
        
        happyView.snp.makeConstraints { make in
            make.top.equalTo(titeLabel.snp.bottom).offset(30)
        }
        
        goodView.snp.makeConstraints { make in
            make.top.equalTo(happyView.snp.bottom).offset(30)
        }
        
        sosoView.snp.makeConstraints { make in
            make.top.equalTo(goodView.snp.bottom).offset(30)
        }
        
        sadView.snp.makeConstraints { make in
            make.top.equalTo(sosoView.snp.bottom).offset(30)
        }
        
        badView.snp.makeConstraints { make in
            make.top.equalTo(sadView.snp.bottom).offset(30)
        }
        
        [happyLabel, goodLabel, sosoLabel, sadLabel, badLabel].forEach {
            
            $0.snp.makeConstraints { make in
                make.horizontalEdges.equalToSuperview().inset(40)
                make.height.equalTo(view.snp.height).multipliedBy(0.1)
            }
        }
    }
}

