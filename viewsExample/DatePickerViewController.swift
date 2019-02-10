//
//  DatePickerViewController.swift
//  viewsExample
//
//  Created by Emre Erol on 10.02.2019.
//  Copyright © 2019 Codework. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePickr: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.datePickr.date = Date.init() as Date
    }
}
