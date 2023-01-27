//
//  ViewController.swift
//  Introduce Student
//
//  Created by sunqiao lin on 1/27/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
   
    @IBOutlet weak var numOfPetsLabel: UILabel!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var morePetsStepper: UIStepper!
   
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var yearsSegmentedControl: UISegmentedControl!
    @IBAction func stepperPressed(_ sender: UIStepper) {
        numOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearsSegmentedControl.titleForSegment(at: yearsSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numOfPetsLabel.text!) pets.It is \(morePetsSwitch.isOn) that I wanted more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default,handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated:true,completion: nil)
    }
}

