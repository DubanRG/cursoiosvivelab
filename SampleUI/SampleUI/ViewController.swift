//
//  ViewController.swift
//  SampleUI
//
//  Created by ViVeLab Tunja9 on 13/08/22.
//  Copyright © 2022 Sena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tittleLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the viewz
        tittleLabel.text = "hola"
    }

    @IBAction func buttonClick(_ sender: Any) {
        tittleLabel.text = "Cambio"
    }
    
}   

