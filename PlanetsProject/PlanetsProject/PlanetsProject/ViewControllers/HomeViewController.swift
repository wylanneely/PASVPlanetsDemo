//
//  ViewController.swift
//  PlanetsProject
//
//  Created by Wylan L Neely on 11/14/24.
//

import UIKit

class HomeViewController: UIViewController {

    let planetsController = PlanetsController()
    
    var planetModel: PlanetModel?

    
    //MARK: App Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: Outlets

    @IBOutlet weak var planetNameTextField: UITextField!
        
    //MARK: Actions
     
    @IBAction func explorePlanetButtonTapped(_ sender: Any) {
        //explain
        if let planetText = planetNameTextField.text {
            
            if let planet = planetsController.getPlanet(byName: planetText) {
                self.planetModel = planet
                self.performSegue(withIdentifier: "toPlanetVC", sender: self)
            } else {
                displayAlertController()
            }
            
        }
        
    }
    
    
    
    //MARK: Alert (UIAlertController)
    
    private func displayAlertController(){
        
        let alertController = UIAlertController(
                   title: "Error Spelling Planet!",
                   message: "Please fix the spelling of the planet",
                   preferredStyle: .alert
               )
               
               
        let defaultAction = UIAlertAction(title: "OK", style: .default) { _ in
                   print("OK button tapped")
               }
        
        alertController.addAction(defaultAction)
             
        self.present(alertController, animated: true)
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPlanetVC" {
            if let planetVC = segue.destination as? PlanetViewController {
                planetVC.planetModel = self.planetModel
            }
            
        }
    }
    
}

