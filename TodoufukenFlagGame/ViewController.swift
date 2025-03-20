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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        flagButton1.layer.borderWidth = 1
        flagButton2.layer.borderWidth = 1
        flagButton3.layer.borderWidth = 1
        
        flagButton1.layer.borderColor = UIColor.lightGray.cgColor
        flagButton2.layer.borderColor = UIColor.lightGray.cgColor
        flagButton3.layer.borderColor = UIColor.lightGray.cgColor
    }


}

