//
//  PlanetsController.swift
//  PlanetsProject
//
//  Created by Wylan L Neely on 11/14/24.
//

import Foundation
import UIKit

class PlanetsController {
    
    static var shared = PlanetsController()
    
    //MARK: - Create
    
    init() {
        
       
        
        let earth = PlanetModel(name: "Earth", image: UIImage(named: "Earth")!, distanceFromSun: 1.0, sizeComparedToEarth: 1.0, randomFact: "Earth is the only planet known to have liquid water on its surface and is uniquely home to life as we know it.")
        let jupiter = PlanetModel(name: "Jupiter", image: UIImage(named: "Jupiter")!, distanceFromSun: 5.2, sizeComparedToEarth: 11.2, randomFact: "Jupiter has a giant storm, known as the Great Red Spot, that’s larger than Earth and has been raging for at least 300 years.")
        let mercury = PlanetModel(name: "Mercury", image: UIImage(named: "Mercury")!, distanceFromSun: 0.39, sizeComparedToEarth: 0.38, randomFact: "Mercury has the most extreme temperature changes of any planet, ranging from -173°C at night to 427°C during the day")
        let venus = PlanetModel(name: "Venus", image: UIImage(named: "Venus")!, distanceFromSun: 0.72, sizeComparedToEarth: 0.95, randomFact: "Venus rotates in the opposite direction of most planets, making its day longer than its year (243 Earth days to rotate vs. 225 Earth days to orbit the Sun)")
        let mars = PlanetModel(name: "Mars", image: UIImage(named: "Mars")!, distanceFromSun: 1.52, sizeComparedToEarth: 0.53, randomFact: "Mars has the largest volcano in the solar system, Olympus Mons, which is roughly 13.6 miles high (three times taller than Mount Everest")
        let saturn = PlanetModel(name: "Saturn", image: UIImage(named: "Saturn")!, distanceFromSun: 9.58, sizeComparedToEarth: 9.45, randomFact: "Saturn’s rings are made of ice and rock and stretch out over 280,000 km in diameter – that’s about 73% of the distance between Earth and the Moon")
        let uranus = PlanetModel(name: "Uranus", image: UIImage(named: "Uranus")!, distanceFromSun: 19.22, sizeComparedToEarth: 4, randomFact: " Uranus spins on its side, with a tilt of about 98 degrees, meaning it essentially rolls around the Sun on its equator.")
        let neptune = PlanetModel(name: "Neptune", image: UIImage(named: "Neptune")!, distanceFromSun: 30.05, sizeComparedToEarth: 3.88, randomFact: "Neptune has the fastest winds recorded in the solar system, reaching up to 2,100 kilometers per hour (1,300 miles per hour)")
        
        
        self.planets = [earth,jupiter,mercury,venus,mars,saturn,uranus,neptune]
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

