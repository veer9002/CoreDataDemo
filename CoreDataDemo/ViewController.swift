//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Manish Sharma on 03/11/18.
//  Copyright © 2018 Manish Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtMobile: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func saveAction(_ sender: Any) {
        let dic = [
            "name": self.txtName.text,
            "address": self.txtAddress.text,
            "city": self.txtCity.text,
            "mobile": self.txtMobile.text]
        DatabaseHelper.sharedInstance.save(object: dic as! [String : String])
    }
}

