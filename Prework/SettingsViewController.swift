//
//  SettingsViewController.swift
//  Prework
//
//  Created by Chris Le on 1/20/22.
//

import UIKit

class SettingsViewController: UIViewController {

    //@IBOutlet weak var switchTest: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*if let userDefaultValue = UserDefaults.standard.getValueOfSwitch(), userDefaultValue{
            switchTest.setOn(true, animated: true)
        }
        
        else{
            switchTest.setOn(false, animated: false)
        }*/

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
