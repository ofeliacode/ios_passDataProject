//
//  SecondViewController.swift
//  passDataProject
//
//  Created by Офелия Баширова on 13.07.2020.
//  Copyright © 2020 Офелия Баширова. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var login: String?
    @IBOutlet weak var label: UILabel!
   
    override func viewDidLoad() {
        guard let login = self.login else {return}
        super.viewDidLoad()
        label.text = "Hello, \(login)"
    }
    @IBAction func goBack(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
}

    
