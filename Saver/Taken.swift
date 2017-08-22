//
//  Taken.swift
//  Saver
//
//  Created by Mohamed Alghoush  on 8/22/17.
//  Copyright © 2017 Mohamed Alghoush . All rights reserved.
//

import Foundation
import UIKit
class Taken: UITableViewController{
    let type:[String] = ["O","AB","B"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "go", for: indexPath)
        cell.textLabel?.text = type[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return type.count
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "go1"{
            let destination = segue.destination as! Table
            let index = tableView.indexPathForSelectedRow?.row
            let selectedType = type[index!]
            destination.currenttype  = selectedType
            
        }
    }
    
    
    
    
}
