//
//  DLBPlanetsTableViewController.swift
//  SWAPI-C
//
//  Created by Nicholas Towery on 12/3/20.
//  Copyright © 2020 delight.lab. All rights reserved.
//

import UIKit

class DLBPlanetsTableViewController: UITableViewController {

    var planets: [DLBPlanet] = [] {
        didSet {
            updateTableView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DLBPlanetController.fetchPlanets { (planetsArray) in
            if let planetsArray = planetsArray {
                self.planets = planetsArray
            } else {
                return
            }
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return planets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        let planet = planets[indexPath.row]
        cell.textLabel?.text = planet.name

        return cell
    }
    
    func updateTableView(){
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        
        if segue.identifier == "toPlanetVC" {
            guard let indexPath = tableView.indexPathForSelectedRow,
            let destinationVC = segue.destination as? DLBPlanetViewController else {return}
            
            let planet = planets[indexPath.row]
            
            destinationVC.planet = planet
        }
    }
    

}
