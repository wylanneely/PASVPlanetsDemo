//
//  LabelViewController.swift
//  UiKitAndStoryboards
//
//  Created by Wylan L Neely on 11/11/24.
//

import UIKit

class LabelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = labelString
        
        //hint
        if isBackgroundChanging {
            changeBackgroundColor(colorString: labelString)

        } else {
            changeLabelColor(colorString: labelString)
        }
    }

    func changeBackgroundColor(colorString: String?) {
        if let colorStringLowercased = colorString?.lowercased() {
            switch colorStringLowercased {
            case "red":
                self.view.backgroundColor = .red
            case "green":
                self.view.backgroundColor = .green
            case "yellow":
                self.view.backgroundColor = .yellow
            case "blue":
                self.view.backgroundColor = .blue
            default:
                self.view.backgroundColor = .lightGray
            }
        }
    }
    
    func changeLabelColor(colorString:String?){
        if let uncapitalizedColorString = colorString?.lowercased() {
                //fill out switch case
        }
    }
    
    //Assignment: use this variable to decide to change backgroundcolor or label color
    var isBackgroundChanging: Bool = false
    
    var labelString: String?
    
    @IBOutlet weak var displayLabel: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
