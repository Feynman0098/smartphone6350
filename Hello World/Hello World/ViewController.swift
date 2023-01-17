//
//  ViewController.swift
//  Hello World
//
//  Created by Feynman · on 2023/1/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblExample: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressAction(_ sender: UIButton) {
        print("press")
        lblExample.text = "The button was pressed"
    }
    
}

