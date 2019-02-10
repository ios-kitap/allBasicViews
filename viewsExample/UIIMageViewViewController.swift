//
//  UIIMageViewViewController.swift
//  viewsExample
//
//  Created by Emre Erol on 7.02.2019.
//  Copyright © 2019 Codework. All rights reserved.
//

import UIKit

class UIIMageViewViewController: UIViewController {

    //ImageView IBOutlet Bağlantısı (Yuvarlar ImageView)
    @IBOutlet weak var radialImageView: UIImageView!
    
    @IBOutlet weak var golgeliImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageVieweGolgeEkle()
        imageViewiYuvarlakYap()
    }
    
    func imageVieweGolgeEkle(){
        golgeliImageView.layer.shadowColor = UIColor.darkGray.cgColor
        golgeliImageView.layer.shadowOpacity = 0.7
        golgeliImageView.layer.shadowOffset = CGSize.zero
        golgeliImageView.layer.shadowRadius = 6
    }
    
    func imageViewiYuvarlakYap(){
        self.radialImageView.layer.borderWidth = 1.0
        self.radialImageView.layer.masksToBounds = false
        self.radialImageView.layer.borderColor = UIColor.white.cgColor
        self.radialImageView.layer.cornerRadius = self.radialImageView.frame.size.height / 2
        self.radialImageView.clipsToBounds = true
    }
}
