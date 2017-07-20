//
//  ViewController.swift
//  EarthquakeMapper
//
//  Created by Alejandro Haro on 7/19/17.
//  Copyright © 2017 Alejandro Haro. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController, UITableViewDelegate{
    
    var earthquakes = ["Los Angeles","Mexico","Cabo San Lucas", "San Jose", "Gilroy", "Guasave", "Sinaloa", "Guamuchil"
    ,"navojoa", "Mazatlan", "Culichi"
    ]
    
    @IBOutlet weak var recentTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
        earthquakes.remove(at: indexPath.row)
        tableView.reloadData()
    }
}
   
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return earthquakes.count
    }
    
    // how should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        // set text label to the model that is corresponding to the row in array
        cell.textLabel?.text = earthquakes[indexPath.row]
        cell.detailTextLabel?.text = earthquakes[indexPath.row]
        // return cell so that Table View knows what to render in each row
        return cell
    }
}
