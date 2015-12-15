//
//  SettingsViewController.swift
//  tips
//
//  Created by Anthony Consoli on 12/14/15.
//  Copyright © 2015 codepath. All rights reserved.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
