//
//  ViewController.swift
//  Table View with Section
//
//  Created by Fahim Rahman on 6/2/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var objectsArray = [Objects]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        storingData()
    }
    
    
    func storingData() {
        objectsArray = [
        Objects(sectionName: "Section 1", sectionObjects: ["a","b","c","d"]),
        Objects(sectionName: "Section 2", sectionObjects: ["1","2","3","4"]),
        Objects(sectionName: "Section 3", sectionObjects: []),
        Objects(sectionName: "Section 4", sectionObjects: ["+","-","*","/"]),
        Objects(sectionName: "Section 5", sectionObjects: ["!","@","#","$"]),
        Objects(sectionName: "Section 6", sectionObjects: ["+","-","*","/"]),
        Objects(sectionName: "Section 7", sectionObjects: []),
        Objects(sectionName: "Section 8", sectionObjects: ["!","@","#","$"]),
        Objects(sectionName: "Section 9", sectionObjects: ["+","-","*","/"]),
        Objects(sectionName: "Section 10", sectionObjects: ["!","@","#","$"]),
        Objects(sectionName: "Section 11", sectionObjects: ["a","b","c","d"]),
        Objects(sectionName: "Section 12", sectionObjects: ["1","2","3","4"]),
        Objects(sectionName: "Section 13", sectionObjects: []),
        Objects(sectionName: "Section 14", sectionObjects: ["+","-","*","/"]),
        Objects(sectionName: "Section 15", sectionObjects: ["!","@","#","$"]),
        Objects(sectionName: "Section 16", sectionObjects: ["+","-","*","/"]),
        Objects(sectionName: "Section 17", sectionObjects: []),
        Objects(sectionName: "Section 18", sectionObjects: ["!","@","#","$"]),
        Objects(sectionName: "Section 19", sectionObjects: ["+","-","*","/"]),
        Objects(sectionName: "Section 20", sectionObjects: ["!","@","#","$"])
        ]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return objectsArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectsArray[section].sectionObjects.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        objectsArray[section].sectionName
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.textLabel?.text = objectsArray[indexPath.section].sectionObjects[indexPath.row]
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.textColor = .purple
        
        return cell
    }

}
