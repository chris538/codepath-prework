//
//  ViewController.swift
//  Prework
//
//  Created by Chris Le on 1/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    //@IBOutlet weak var numberOfGuestsTextField: UITextField!
    @IBOutlet weak var numberOfGuestsTextField: UITextField!
    @IBOutlet weak var totalPerGuestLabel: UILabel!
    //@IBOutlet weak var totalPerGuestLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        
        // Do any additional setup after loading the view.
    }

    @IBAction func darkModeSwitch(_ sender: UISwitch) {
        if #available(iOS 13.0, *) {
            let appDelegate = UIApplication.shared.windows.first
            
            if sender.isOn {
                appDelegate?.overrideUserInterfaceStyle = .dark
                return
            }
            
            else{
            appDelegate?.overrideUserInterfaceStyle = .light
            return
            }
        }
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Get number of guests and total for each guest split evenly
        let numGuests = Double(numberOfGuestsTextField.text!) ?? 0
        let totalPerGuest = total / numGuests
        
        // Update Tip Amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
        //Update Total per Guest label
        totalPerGuestLabel.text = String(format: "$%.2f", totalPerGuest)
    }
    
}
