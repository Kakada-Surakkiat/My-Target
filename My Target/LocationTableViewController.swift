//
//  LocationTableViewController.swift
//  My Target
//
//  Created by Kakada_Surakkiat on 5/30/17.
//  Copyright © 2017 Kakada_Surakkiat. All rights reserved.
//

import UIKit
import CoreData

class LocationTableViewController: UITableViewController {
    
    var locations = [DBLocation]()
    
    var txtPhone = ""
    var txtSnippet = ""
    var txtlatlng = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locations = loadLocation()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return locations.count

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_location", for: indexPath)
        let location = locations[indexPath.row]
        cell.textLabel?.text = location.name
        txtPhone = location.phone!
        txtSnippet = location.snippet!
//        txtlatlng = location.latitude! + ", " + location.longitude!
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_location", for: indexPath)
        let location = locations[indexPath.row]
        
        print(indexPath.row)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "a"{
            let myVC = segue.destination as! LocationDetailViewController
            myVC.phonetxt = txtPhone
            myVC.snippettxt = txtSnippet
        }
    }


    func loadLocation()->[DBLocation]{
    
//        let l1 = DBLocation(name: "Kakada", phone: "095811102", snippet: "My shop is good", latitude: 14.2435235, longitude: 112.1341324, status: 1, lastUpdate: 123415325311)
//        let l2 = DBLocation(name: "Surakkiat", phone: "093399903", snippet: "My shop is very good", latitude: 14.2435235, longitude: 112.1341324, status: 1, lastUpdate: 123415325311)
//        let l3 = DBLocation(name: "Rith", phone: "0972202142", snippet: "My shop is beautiful", latitude: 14.2435235, longitude: 112.1341324, status: 1, lastUpdate: 123415325311)
//        
//        let locations = [l1, l2, l3]
        
        let request = NSFetchRequest<DBLocation>(entityName: "DBLocation")
        
        let locations = try! AppDelegate.context.fetch(request)
    
        return locations
    
    }


}
