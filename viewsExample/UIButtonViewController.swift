//
//  UIButtonViewController.swift
//  viewsExample
//
//  Created by Emre Erol on 7.02.2019.
//  Copyright © 2019 Codework. All rights reserved.
//

import UIKit

class UIButtonViewController: UIViewController {
    
    //Button IBOutlet Bağlantıları
    @IBOutlet weak var ikinciButton: UIButton!
    @IBOutlet weak var ucuncuButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ikinciButton.setTitle("İkinci Button", for: .focused)
        ikinciButton.layer.backgroundColor = UIColor.darkGray.cgColor
        ikinciButton.layer.cornerRadius = 15.0
        ikinciButton.clipsToBounds = true
        ikinciButton.layer.borderWidth = 0.5
        ikinciButton.layer.borderColor = UIColor.black.cgColor
        
    }
    
    
    //3.Button IBAction Bağlantısı
    @IBAction func butonabasildi(_ sender: Any) {
        self.ucuncuButton.setTitle("Üçüncü Button", for: .highlighted)
        self.ucuncuButton.layer.backgroundColor = UIColor.blue.cgColor
        self.ucuncuButton.clipsToBounds = true
        self.ucuncuButton.layer.borderColor = UIColor.black.cgColor
        self.ucuncuButton.titleLabel?.textColor = UIColor.white

        
        UIView.animate(withDuration: 1.0) {
            self.ucuncuButton.transform = CGAffineTransform(rotationAngle: (360.0 * .pi)/360.0)
            self.ucuncuButton.layer.cornerRadius = 15.0
            self.ucuncuButton.layer.borderWidth = 2
            self.ucuncuButton.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
        }
    }
    

}
