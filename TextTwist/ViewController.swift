//
//  ViewController.swift
//  letterGameApp
//
//  Created by God on 8/6/19.
//  Copyright © 2019 God. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate  {

    @IBOutlet weak var guessLetters: UILabel!
    
    @IBOutlet weak var letterCheck: UILabel!
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var threeLetterTextView: UITextView!
    
    @IBOutlet weak var fourLetterView: UITextView!
    
    @IBOutlet weak var fiveLetterView: UITextView!
    
    
    @IBOutlet weak var sixLetterWord: UITextView!
    let wordData = WordData()
    var randomElememt:TestTwistInfo = TestTwistInfo(wordCount: 0, letters: "", words: [""])
    var wordCheck = [String]()
    let testTwistInfoMod = TextTwistModel().insertRandomElement()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    guessLetters.text! = testTwistInfoMod.letters
        userInput.delegate = self
    wordCheck = testTwistInfoMod.words
    }
    
    func textFieldShouldReturn(_ userInput: UITextField) -> Bool {
    
        if wordCheck.contains(userInput.text!) && userInput.text!.count == 3 {
           if !threeLetterTextView.text.contains(userInput.text!) {
            threeLetterTextView.text += "\(String(describing: userInput.text!))\n"
            letterCheck.text! = "Correct!"
            }
        
    }
        if wordCheck.contains(userInput.text!) && userInput.text?.count == 4 {
            if !fourLetterView.text.contains(userInput.text!) {
                fourLetterView.text += "\(String(describing: userInput.text!))\n"
                letterCheck.text! = "Correct!"
            }
        }
        if wordCheck.contains(userInput.text!) && userInput.text?.count == 5 {
            if !fiveLetterView.text.contains(userInput.text!) {
                fiveLetterView.text += "\(String(describing: userInput.text!))\n"
                letterCheck.text! = "Correct!"
            }
        }
        
        if wordCheck.contains(userInput.text!) && userInput.text?.count == 6 {
            if !sixLetterWord.text.contains(userInput.text!) {
                sixLetterWord.text += "\(String(describing: userInput.text!))\n"
                letterCheck.text! = "Correct!"
            }
        }
        return true
    }
    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
////        if (currentGane?.letters).contains(string) ?? false) {
////            userguesslabel.text = "blah blah blah"
////        }
//        let arrayLetters = Array(guessLetters.text!)
//        let familiarTypeRange = Range(range)
//        if let lastCharacter = userInput.text?.last {
//            if arrayLetters.contains(lastCharacter) {
//
//                return true
//            }
//            else {
//                return false
//            }
//
//        }
//    return true
//    }
   




}

