//
//  ViewController.swift
//  TodoufukenFlagGame
//
//  Created by Serrano Soria, Juan on 19/03/2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var flagButton1: UIButton!
    @IBOutlet var flagButton2: UIButton!
    @IBOutlet var flagButton3: UIButton!
    
    var prefectures = Prefecture.all
    var score = 0
    var correctAnswer = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        flagButton1.layer.borderWidth = 1
        flagButton2.layer.borderWidth = 1
        flagButton3.layer.borderWidth = 1
        
        flagButton1.layer.borderColor = UIColor.lightGray.cgColor
        flagButton2.layer.borderColor = UIColor.lightGray.cgColor
        flagButton3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }

    func askQuestion() {
        prefectures.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        flagButton1.setImage(UIImage(named: prefectures[0].romaji), for: .normal)
        flagButton2.setImage(UIImage(named: prefectures[1].romaji), for: .normal)
        flagButton3.setImage(UIImage(named: prefectures[2].romaji), for: .normal)
        
        title = prefectures[correctAnswer].kanji
    }

}

