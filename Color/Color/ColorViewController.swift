//
//  ColorViewController.swift
//  Color
//
//  Created by Boao Huang on 3/8/19.
//  Copyright © 2019 Boao Huang. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    var cellColors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
    
        cell.textLabel?.text = colors[indexPath.row]
        
        cell.backgroundColor = cellColors[indexPath.row]
        
        return cell
    }
    
}
