//
//  model2.swift
//  letterGameApp
//
//  Created by God on 8/6/19.
//  Copyright © 2019 God. All rights reserved.
//

import UIKit
class TextTwistModel:WordData {
    
    func insertRandomElement() -> TestTwistInfo{
        let randomElement = WordData.allInfo.randomElement()!
        return randomElement
    }
    func insertAmountOfWords() -> Int{
        let amountOfWords = insertRandomElement().wordCount
        return amountOfWords
    }
    
}
