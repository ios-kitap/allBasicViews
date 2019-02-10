//
//  tableViewViewController.swift
//  viewsExample
//
//  Created by Emre Erol on 10.02.2019.
//  Copyright © 2019 Codework. All rights reserved.
//

import UIKit

class tableViewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let dizi = ["Mercedes", "BMW", "Renault", "Ford", "Dacia", "Aston Martin", "Lamborgini"]
    
    @IBOutlet weak var tview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tview.delegate = self
        tview.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dizi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tview.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        
        let lbl = cell.viewWithTag(1) as! UILabel
        lbl.text = dizi[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(dizi[indexPath.row])
    }
}
