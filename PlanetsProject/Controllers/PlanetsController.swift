//
//  PlanetsController.swift
//  PlanetsProject
//
//  Created by Wylan L Neely on 11/14/24.
//

import Foundation
import UIKit

class PlanetsController {
    
    //MARK: - Create
    
    init() {
        
       
        
        let earth = PlanetModel(name: "Earth", image: UIImage(named: "Earth")!, distanceFromSun: 1.0, sizeComparedToEarth: 1.0, randomFact: "Earth is the only planet known to have liquid water on its surface and is uniquely home to life as we know it.")
        let jupiter = PlanetModel(name: <#T##String#>, image: <#T##UIImage#>, distanceFromSun: <#T##Double#>, sizeComparedToEarth: <#T##Double#>, randomFact: <#T##String#>)
        let mercury = PlanetModel(name: <#T##String#>, image: <#T##UIImage#>, distanceFromSun: <#T##Double#>, sizeComparedToEarth: <#T##Double#>, randomFact: <#T##String#>)
        
        
        self.planets = [earth,jupiter,mercury]
    }
    //MARK: - Read
    
    let planets: [PlanetModel]
    
    func getPlanet(byName:String)->PlanetModel? {
        return planets.first{$0.name.lowercased() == byName.lowercased()}
    }
    
    func returnPlanet(byName: String) -> PlanetModel? {
        
        for planet in planets {
            
            if planet.name.lowercased() == byName.lowercased() {
                return planet
            }
            
        }
        
        return nil
    }
    
    //MARK: - Uptade
    
    
    //MARK: - Delete
}

