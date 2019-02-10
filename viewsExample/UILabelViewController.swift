//
//  UILabelViewController.swift
//  viewsExample
//
//  Created by Emre Erol on 7.02.2019.
//  Copyright © 2019 Codework. All rights reserved.
//

import UIKit

class UILabelViewController: UIViewController {
    
    //UILabel IBOutlet Bağlantısı
    @IBOutlet weak var textLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label özelliklerini değiştiriyoruz
        textLabel.text = textLabel.text! + " yeni özellikler ekleniyor."
        textLabel.numberOfLines = 10
        textLabel.textAlignment = .right
        textLabel.layer.backgroundColor = UIColor.blue.cgColor
        textLabel.textColor = UIColor.white
        textLabel.layer.borderWidth = 1.0
        textLabel.layer.borderColor = UIColor.blue.cgColor
        textLabel.layer.cornerRadius = 12.0
        textLabel.clipsToBounds = true
        
    }

}
