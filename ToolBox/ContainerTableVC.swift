//
//  ContainerTableVC.swift
//  ToolBox
//
//  Created by Jake Berberich on 1/6/18.
//  Copyright © 2018 Jake Berberich. All rights reserved.
//

import UIKit

class ContainerTableVC: UITableViewController {
 
    struct Animals {
    var category: String
    var animalName: String
    }
    var animalArray = [Animals]()
    var segueFilter: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
buildSampleData()
        if segueFilter == segueFilter {
            print(segueFilter)
            
        }
    }
    
    func buildSampleData() {
        
        
        // simulating Animals returned to JSON
        var lion = Animals(category: "wild", animalName: "lion")
        var hippo = Animals(category: "wild", animalName: "hippo")
        var bear = Animals(category: "wild", animalName: "bear")
        var dog = Animals(category: "house", animalName: "dog")
        var cat = Animals(category: "house", animalName: "cat")
        var rabbit = Animals(category: "house", animalName: "rabbit")
        var monkey = Animals(category: "zoo", animalName: "monkey")
        var tiger = Animals(category: "zoo", animalName: "tiger")
        var elephant = Animals(category: "zoo", animalName: "elephant")
        var lepord = Animals(category: "zoo", animalName: "leapord")
        var gator = Animals(category: "zoo", animalName: "gator")
        
        // simulate the  animalArry received by decoded Json

        animalArray.append(lion)
        animalArray.append(hippo)
        animalArray.append(dog)
        animalArray.append(bear)
        animalArray.append(cat)
        animalArray.append(rabbit)
        animalArray.append(monkey)
        animalArray.append(tiger)
        animalArray.append(elephant)
        animalArray.append(lepord)
        animalArray.append(gator)    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animalArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
let animalRow  = self.animalArray[indexPath.row]
        cell.textLabel?.text = animalRow.animalName
        cell.detailTextLabel?.text = animalRow.category
        return cell
    }
   
 

}
