//
//  PlanetViewController.swift
//  PlanetsProject
//
//  Created by Wylan L Neely on 11/15/24.
//

import UIKit

class PlanetViewController: UIViewController {

    
    var planetModel: PlanetModel?
    
    //MARK: App Life Cycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPlanetData()
    }
 
    
    
    
    //MARK: Load
    
    private func loadPlanetData(){
        if let planet = planetModel {
            planetNameLabel.text = planet.name
            planetImageView.image = planet.image
            planetRandomFactTextView.text = planet.randomFact
            distanceTextView.text = "Distance from sun \(planet.distanceFromSun)(AU)./n Size relative to Earth \(planet.sizeComparedToEarth)"
        }
    }

    //MARK: - Outlets
    
    @IBOutlet weak var planetNameLabel: UILabel!
    
    @IBOutlet weak var planetImageView: UIImageView!
    
    @IBOutlet weak var planetRandomFactTextView: UITextView!
    
    @IBOutlet weak var distanceTextView: UITextView!
    
}
