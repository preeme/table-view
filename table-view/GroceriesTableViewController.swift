//
//  GroceriesTableViewController.swift
//  table-view
//
//  Created by Michael Roa on 11/7/17.
//  Copyright © 2017 Michael Roa. All rights reserved.
//

import UIKit

class GroceriesTableViewController: UITableViewController {

    
    //MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    //MARK: - Properties
    var groceries = ["Milk", "Eggs", "Ham"]
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groceriesCell", for: indexPath)

        cell.textLabel?.text = groceries[indexPath.row]

        return cell
    }

    @IBAction func addToList(_ sender: UIBarButtonItem) {
        
    }
    
}
