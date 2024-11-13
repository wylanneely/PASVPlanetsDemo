//
//  ViewController.swift
//  UiKitAndStoryboards
//
//  Created by Wylan L Neely on 11/8/24.
//

import UIKit

class HomeViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func editDisplayLabel(){
        displayLabel.text = textField.text // changed the displayLabel
        displayLabel.textColor = UIColor.green
    }
    
    var isBlue: Bool = false
    
    func changeBackgroundColor(){
        if isBlue {
            self.view.backgroundColor = .yellow
            self.isBlue = false
        } else {
            self.view.backgroundColor = UIColor.blue
            self.isBlue = true
        }
    }
    
    func editDisplayLabelAndButtonTitle(){
        editLabelButton.setTitle("Button 3 Changed Me", for: .normal)
        displayLabel.text = "Hola!"
        displayLabel.textColor = UIColor.red
    }
 

    //MARK: Outlets
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var editLabelButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    
        
    //MARK: Actions
    
    @IBAction func editLabelButtonTapped(_ sender: Any) {
        editDisplayLabel()
    }

    @IBAction func button2Tapped(_ sender: Any) {
        changeBackgroundColor()
    }
    
    
    @IBAction func button3Tapped(_ sender: Any) {
        editDisplayLabelAndButtonTitle()
    }
    
    @IBAction func segue2ButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "toLabelVC2", sender: self)
    }
    
    override func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?
    ) {
        if segue.identifier == "toLabelVC",
           let destinationVC = segue.destination as? LabelViewController {
            //changebackgroundCOlor
            destinationVC.labelString = textField.text
        }
        
        if segue.identifier == "toLabelVC2" {
            
            if let destinationVC = segue.destination as? LabelViewController {
                //changedLabelColor
                destinationVC.labelString = textField.text
            }
        }
    }
}

