//
//  SpecificVC.swift
//  EarthquakeMapper
//
//  Created by Kristopher Merolla on 7/19/17.
//  Copyright © 2017 Alejandro Haro. All rights reserved.
//

import UIKit
import MapKit

class SpecificVC: UIViewController {
    
    @IBOutlet weak var specificMapView: MKMapView!
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var coordinatesLabel: UILabel!
    @IBOutlet weak var magnitudeLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    
    var location: String?
    var coordinates: String?
    var magnitude: String?
    var link: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        locationLabel.text = location
        coordinatesLabel.text = coordinates
        magnitudeLabel.text = magnitude
        linkLabel.text = link
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
