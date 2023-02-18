//
//  ViewController.swift
//  TwoTablesDemo
//
//  Created by Feynman · on 2023/2/18.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let restaurants = ["McDonald's","Shake Shack","Starbucks","KFC","Domino's"]
    
    var foods0 = [String]()
    var foods1 = [["food11","food12","food13","food14","food15"],
                  ["food21","food22","food23","food24","food25"],
                  ["food31","food32","food33","food34","food35"],
                  ["food41","food42","food43","food44","food45"],
                  ["food51","food52","food53","food54","food55"],]
    
    
    @IBOutlet weak var tblViewTop: UITableView!
    

    @IBOutlet weak var tblViewBottom: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop {
            return restaurants.count
        } else {
            return foods0.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tblViewTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = restaurants[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = foods0[indexPath.row]
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop {
            
            foods0 = foods1[indexPath[1]]
            self.tblViewBottom.reloadData()
        }
    }
    
}

