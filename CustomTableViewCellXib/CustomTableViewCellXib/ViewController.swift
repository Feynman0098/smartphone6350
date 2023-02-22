//
//  ViewController.swift
//  CustomTableViewCellXib
//
//  Created by Feynman · on 2023/2/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let imageNames = ["food1", "food2","food3", "food4","food5", "food6","food7", "food8","food9", "food10","food11", "food12"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
         
        cell.imageContainer.image = UIImage(named: "food\(indexPath.row+1)")
        cell.lblLabel.text = "food\(indexPath.row+1)"
        
        return cell
    }

}

