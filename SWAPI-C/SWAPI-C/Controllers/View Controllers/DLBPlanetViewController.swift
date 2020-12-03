//
//  DLBPlanetViewController.swift
//  SWAPI-C
//
//  Created by Nicholas Towery on 12/3/20.
//  Copyright © 2020 delight.lab. All rights reserved.
//

import UIKit


class DLBPlanetViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var terrainLabel: UILabel!
    @IBOutlet weak var climateLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    
    // MARK: - Properties
    var planet: DLBPlanet? 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    
    // MARK: - Actions
    @IBAction func showFilmsButtonTapped(_ sender: Any) {
    }
    
    func updateView(){
        guard let planet = planet else {return}
        planetNameLabel.text = planet.name
        terrainLabel.text = "Terrain: \(planet.terrain)"
        climateLabel.text = "Climate: \(planet.climate)"
        populationLabel.text = "Population: \(planet.population)"
        
    }


}
