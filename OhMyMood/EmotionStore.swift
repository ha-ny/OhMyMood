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

var emotionDic: [Emotion:Int] = [
    .happy: 0,
    .good: 0,
    .soso: 0,
    .sad: 0,
    .bad: 0,
]
