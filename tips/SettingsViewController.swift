//
//  SettingsViewController.swift
//  tips
//
//  Created by Anthony Consoli on 12/14/15.
//  

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultPeople: UITextField!
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    let defaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if(defaults.objectForKey("Default Percentage") != nil)
        {
            defaultTipControl.selectedSegmentIndex = defaults.integerForKey("Default Percentage")
        }
        if(defaults.objectForKey("Default To Split") != nil)
        {
            defaultPeople.text = String(format:"%.0f", defaults.doubleForKey("Default To Split"))
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged(sender: AnyObject){
        
        
        let defaultPercentage = defaultTipControl.selectedSegmentIndex
        defaults.setInteger(defaultPercentage, forKey: "Default Percentage")
        
        let defaultSplitNumber = NSString(string: defaultPeople.text!).doubleValue
        defaults.setDouble(defaultSplitNumber, forKey: "Default To Split")
        
        defaults.synchronize()
   
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
    



}
