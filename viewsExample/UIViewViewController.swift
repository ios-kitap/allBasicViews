//
//  UIViewViewController.swift
//  viewsExample
//
//  Created by Emre Erol on 7.02.2019.
//  Copyright © 2019 Codework. All rights reserved.
//

import UIKit

class UIViewViewController: UIViewController {

    
    //UIView IBOutlet Bağlantısı
    
    @IBOutlet weak var uiviewelementi: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ViewController Yüklendiğinde uiview in layer özeliklerini değiştirelim
        
        uiviewelementi.layer.borderColor = UIColor.red.cgColor
        uiviewelementi.layer.backgroundColor = UIColor.brown.cgColor
        uiviewelementi.layer.borderWidth = 3.0
        
        
    }

}
