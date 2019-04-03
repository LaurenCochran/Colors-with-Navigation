//
//  ColorsViewController.swift
//  Colors
//
//  Created by Lauren on 2019-03-08.
//  Copyright © 2019 Lauren Cochran. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func backgroundColor(index: Int) -> UIColor {
        switch index{
        case 0:
            return UIColor.red
        case 1:
            return UIColor.orange
        case 2:
            return UIColor.yellow
        case 3:
            return UIColor.green
        case 4:
            return UIColor.blue
        case 5:
            return UIColor.purple
        case 6:
            return UIColor.brown
        default:
            break
        }
        return UIColor.white
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        cell.backgroundColor = backgroundColor(index: indexPath.row)
        return cell
    }
    

    

}
