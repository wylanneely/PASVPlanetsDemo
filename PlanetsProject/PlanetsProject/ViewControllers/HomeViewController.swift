//
//  ViewController.swift
//  PlanetsProject
//
//  Created by Wylan L Neely on 11/14/24.
//

import UIKit

class HomeViewController: UIViewController {

  let planetsController = PlanetsController()
    
    //MARK: App Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: Outlets

    @IBOutlet weak var planetNameTextField: UITextField!
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPlanetVC" {
            if let planetVC = segue.destination as? PlanetViewController {
                
                if let planetName = planetNameTextField.text {
            
                    let planet = planetsController.getPlanet(byName: planetName)
                    planetVC.planetModel = planet
                }

            }
            
            
            
        }
    }
    
}

