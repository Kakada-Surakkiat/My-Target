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
    
    var phonetxt = ""
    var snippettxt = ""
    var latlngtxt = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phone.text = phonetxt
        snippet.text = snippettxt
        latlng.text = "12.123134, 105.124244"
    }


    


}
