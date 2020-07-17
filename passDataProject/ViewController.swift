//
//  ViewController.swift
//  passDataProject
//
//  Created by Офелия Баширова on 13.07.2020.
//  Copyright © 2020 Офелия Баширова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var login: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var password: UITextField!
    
    
    
    
    @IBAction func loginin(_ sender: UIButton) {
        performSegue(withIdentifier: "detalSegue", sender: nil)
    }
    @IBAction func unwindSegueToMainScreen (segue: UIStoryboardSegue){
        guard segue.identifier == "unwindSegue" else {return}
        guard let svc = segue.source as? SecondViewController else {return}
        self.resultLabel.text = svc.label.text
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = login.text
    }
    //функция убирает клавиатуру при клике на экран
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

