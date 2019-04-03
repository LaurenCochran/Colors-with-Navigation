//
//  ColorsViewController.swift
//  Colors
//
//  Created by Lauren on 2019-03-08.
//  Copyright © 2019 Lauren Cochran. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var colorsTableView: UITableView!
    var colors = [Colors(name: "red", uiColor: UIColor.red),
                  Colors(name: "orange", uiColor: UIColor.orange),
                  Colors(name: "yellow", uiColor: UIColor.yellow),
                  Colors(name: "green", uiColor: UIColor.green),
                  Colors(name: "blue", uiColor: UIColor.blue),
                  Colors(name: "purple", uiColor: UIColor.purple),
                  Colors(name: "brown", uiColor: UIColor.brown)]
    
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorNavigationViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row{
            destination.color = colors[row]
        }
    }
    

    

}

