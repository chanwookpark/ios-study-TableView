//
//  ViewController.swift
//  TableView
//
//  Created by chanwook on 2016. 3. 23..
//  Copyright © 2016년 chanwook. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var animals = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.animals = [Animal(name: "개"), Animal(name: "소"), Animal(name: "양"), Animal(name: "말"), Animal(name: "돼지")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        var animal : Animal
        
        animal = animals[indexPath.row]
        
        cell.textLabel?.text = animal.name
        
        return cell
    }


}

