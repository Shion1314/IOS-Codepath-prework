//
//  ViewController.swift
//  Codepath-Prework
//
//  Created by Jiaxin Lin on 1/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Petswitch: UISwitch!
    @IBOutlet weak var animeTextField: UITextField!
    @IBOutlet weak var animeSwitch: UISwitch!
    @IBOutlet weak var petSwitch: UIStepper!
    @IBOutlet weak var numberOfPets: UILabel!
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    @IBOutlet weak var yearSegementedControl: UISegmentedControl!
    
    @IBOutlet weak var animeLabel: UILabel!
    @IBAction func didStepper(_ sender: UIStepper) {
        numberOfPets.text="\(Int(sender.value))"
    }
    @IBAction func animeButtonClicked(_ sender: UISwitch) {
      
        if animeSwitch.isOn{
        animeTextField.isHidden=false
            animeLabel.isHidden=false;
           
            
        }
        else{
            animeTextField.isHidden=true;
            animeLabel.isHidden=true;
        }
        
    }
    @IBAction func buttonDidClicked(_ sender: UIButton) {
        let year = yearSegementedControl.titleForSegment(at: yearSegementedControl.selectedSegmentIndex)
        var anime=""
        anime="\(animeTextField.text!)"
        let introduction = " My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!).I am currently in my \(year!) year and I own \(numberOfPets.text!) dogs.It is \(Petswitch.isOn) that I want more pets. It is \(animeSwitch.isOn) that I like anime. My favorite anime is \(anime)"
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)

                
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animeTextField.isHidden=true;
        animeLabel.isHidden=true;
    }


}

