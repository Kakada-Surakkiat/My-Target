//
//  LocationDetailViewController.swift
//  My Target
//
//  Created by Kakada_Surakkiat on 5/30/17.
//  Copyright © 2017 Kakada_Surakkiat. All rights reserved.
//

import UIKit

class LocationDetailViewController: UIViewController {
    
    @IBOutlet var locationDetail: UIView!
    
    @IBOutlet weak var phone: UILabel!

    @IBOutlet weak var snippet: UILabel!
    
    @IBOutlet weak var latlng: UILabel!
  
    
    var location: Location!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phone.text = location.phone
        snippet.text = location.snippet
        latlng.text = location.latitude + location.longitude
    }


    


}
