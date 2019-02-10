//
//  UITextFieldViewController.swift
//  viewsExample
//
//  Created by Emre Erol on 7.02.2019.
//  Copyright © 2019 Codework. All rights reserved.
//

import UIKit

class UITextFieldViewController: UIViewController {

    
    @IBOutlet weak var birinciField: UITextField!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.layer.cornerRadius = 15.0
        textField.clipsToBounds = true
        textField.textColor = UIColor.cyan
        textField.layer.backgroundColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1.0
    }
    
    @IBAction func valChanged(_ sender: Any) {
        birinciField.text = textField.text
    }
    
    
}
