//
//  Table.swift
//  Saver
//
//  Created by Mohamed Alghoush  on 8/22/17.
//  Copyright © 2017 Mohamed Alghoush . All rights reserved.
//

import Foundation
import UIKit
class Table: UITableViewController{
    let O:[String] = ["1","2","3"]
    let AB:[String] = ["4","5","6"]
    let B:[String] = ["7","8","9"]
    var currentty:[String] = []
    var currenttype:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if currenttype == "O"{
            currentty = O
            
        }
        else if currenttype == "AB"{
            currentty = AB
            
        }
        else if currenttype == "B"{
            currentty = B
            
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gotable", for: indexPath)
        cell.textLabel?.text = currentty[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentty.count
    }
    
}
