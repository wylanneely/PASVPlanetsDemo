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
        
        if let planetName = planetModel?.name {
            planetNameLabel.text = planetName
        }
        
        if let planetImage = planetModel?.image {
            planetImageView.image = planetImage
        }
        
        if let planetRandomFact = planetModel?.randomFact {
            planetRandomFactTextView.text = planetRandomFact
        }
        
        if let planetDistanceFromSun = planetModel?.distanceFromSun {
            distanceTextView.text = planetDistanceFromSun.description
        }

    }
 

    //MARK: - Outlets
    
    @IBOutlet weak var planetNameLabel: UILabel!
    
    @IBOutlet weak var planetImageView: UIImageView!
    
    @IBOutlet weak var planetRandomFactTextView: UITextView!
    
    @IBOutlet weak var distanceTextView: UITextView!
    
}
