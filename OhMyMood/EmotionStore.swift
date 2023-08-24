//
//  EmotionStore.swift
//  OhMyMood
//
//  Created by 김하은 on 2023/07/26.
//

import Foundation


enum Emotion: Int{
    case happy = 0
    case good
    case soso
    case sad
    case bad
}

class EmotionStore{
    
    static let sheard = EmotionStore()
    
    private init(){ }

    func returnEmotionString(emotion: Emotion) -> String{
        switch emotion {
        case .happy:
            return "행복"
        case .good:
            return "좋음"
        case .soso:
            return "보통"
        case .sad:
            return "슬픔"
        case .bad:
            return "나쁨"
        }
    }
}
