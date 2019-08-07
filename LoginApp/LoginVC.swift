//
//  LoginVC.swift
//  LoginApp
//
//  Created by Борис Крисько on 8/6/19.
//  Copyright © 2019 Borys Krisko. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloLabel.text = text
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
