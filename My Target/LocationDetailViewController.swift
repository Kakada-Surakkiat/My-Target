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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
