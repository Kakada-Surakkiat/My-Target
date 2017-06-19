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
    
    var locations = [Location]()
    
    var txtPhone = ""
    var txtSnippet = ""
    var txtlatlng = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadLocation()
        

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


    func loadLocation(){
        
        let myUrl = "http://192.168.43.194/fe_e-library/explore.php"
        
        let url = URL(string:myUrl)!
        let task = URLSession.shared.dataTask(with: url){(data, response, error) in
            let jsonObjects = try! JSONSerialization.jsonObject(with: data!, options:[]) as![Any]
            print(jsonObjects)
            
            
            var locations = [Location]()
            
            for item in jsonObjects{
                let loc = item as! [String:Any]
                let id = loc["id"] as! String
                let name = loc["name"] as! String
                let phone = loc["phone"] as! String
                let snippet = loc["snippet"] as! String
                let lat = loc["lat"] as! String
                let long = loc["long"] as! String
                let cellLocation = Location(id: id, name: name, phone: phone, snippet: snippet, latitude: lat, longitude: long)
                locations.append(cellLocation)
            }
            
            self.locations = locations
            self.tableView.reloadData()
            
        }
        task.resume()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectCell = sender as! LocationListTableViewCell
        let indexPath = tableView.indexPath(for: selectCell)!
        let selectLocation = locations[indexPath.row]
        
        let locationDetailViewController = segue.destination as! LocationDetailViewController
        locationDetailViewController.location = selectLocation
        
    }

}
