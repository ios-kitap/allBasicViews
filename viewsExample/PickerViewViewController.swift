//
//  PickerViewViewController.swift
//  viewsExample
//
//  Created by Emre Erol on 10.02.2019.
//  Copyright © 2019 Codework. All rights reserved.
//

import UIKit

class PickerViewViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    let meyveler = ["Elma", "Armut", "Üzüm", "Avokado"]
    
    @IBOutlet weak var pickerView: UIPickerView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return meyveler.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return meyveler[row]
    }
    
    
}
