//
//  UISegmentedControlViewController.swift
//  viewsExample
//
//  Created by Emre Erol on 7.02.2019.
//  Copyright © 2019 Codework. All rights reserved.
//

import UIKit

class UISegmentedControlViewController: UIViewController {
    
    @IBOutlet weak var segmentView: UISegmentedControl!
    
    //First View UIElements
    @IBOutlet weak var switchui: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    
    //Second View UIElements
    @IBOutlet weak var progressBarv: UIProgressView!
    
    //Constraint IBOutlet Bağlantıları
    @IBOutlet weak var firstViewConstraing: NSLayoutConstraint!
    @IBOutlet weak var secondViewConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func segmentChanged(_ sender: Any) {
        var x = segmentView.selectedSegmentIndex
        if x == 0 {
            self.secondViewConstraint.constant = -400.0
            self.firstViewConstraing.constant = 0
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
            
        }else if x == 1 {
            self.secondViewConstraint.constant = 0
            self.firstViewConstraing.constant = -400.0
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
            
        }
    }
    
    @IBAction func switchChanged(_ sender: Any) {
        switchLabel.text = "Switch Değişti.."
    }
    
    @IBAction func startProgressBar(_ sender: Any) {
        let d = drand48()
        progressBarv.setProgress(Float(d), animated: true)
    }
    
    
    
}
