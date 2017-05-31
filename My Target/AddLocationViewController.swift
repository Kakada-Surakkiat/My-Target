//
//  AddLocationViewController.swift
//  My Target
//
//  Created by Kakada_Surakkiat on 5/31/17.
//  Copyright © 2017 Kakada_Surakkiat. All rights reserved.
//

import UIKit
import CoreData

class AddLocationViewController: UIViewController {
    
    @IBOutlet weak var addName: UITextField!
    
    @IBOutlet weak var addPhone: UITextField!

    @IBOutlet weak var addSnippet: UITextField!
    
    @IBOutlet weak var addLat: UITextField!
    
    @IBOutlet weak var addLong: UITextField!
    
    @IBOutlet weak var btnAddLocation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.btnAddLocation.addTarget(self, action: #selector(self.addLocation), for: .touchUpInside)


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addLocation(){
        
        let loc = NSEntityDescription.insertNewObject(forEntityName: "DBLocation", into: AppDelegate.context) as! DBLocation
        

        loc.name = addName.text
        loc.phone = addPhone.text
        loc.snippet = addSnippet.text
        loc.latitude = Double(addLat.text!)!
        loc.longitude = Double(addLong.text!)!
        
        try! AppDelegate.context.save()
        
    }

    

}
