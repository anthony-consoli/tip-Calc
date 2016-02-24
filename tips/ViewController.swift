//
//  ViewController.swift
//  tips
//
//  Created by Anthony Consoli on 12/12/15.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splitField: UITextField!
    
    @IBOutlet weak var splitTipLabel: UILabel!
    @IBOutlet weak var splitTotal: UILabel!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup after loading the view
        tipLabel.text = "0.00"
        totalLabel.text = "0.00"
        splitTipLabel.text = "0.00"
        splitTipLabel.hidden = true
        splitTotal.hidden = true

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidAppear(animated)
        if(defaults.objectForKey("Default Percentage") != nil)
        {
            tipControl.selectedSegmentIndex = defaults.integerForKey("Default Percentage")
        }
        if(defaults.objectForKey("Default To Split") != nil)
        {
            splitField.text = String(format:"%.0f", defaults.doubleForKey("Default To Split"))
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let waysSplit = NSString(string: splitField.text!).doubleValue

        
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        splitTipLabel.text = "$\(tip/waysSplit)"
        
        if(waysSplit > 1)
        {
            tipLabel.text = String(format: "$%.2f", tip)
            splitTipLabel.text = String(format: "$%.2f each", tip/waysSplit)
            totalLabel.text = String(format: "$%.2f", total)
            splitTotal.text = String(format: "$%.2f each", total/waysSplit )
            splitTipLabel.hidden = false
            splitTotal.hidden = false
        }
        else
        {
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
            splitTipLabel.hidden = true
            splitTotal.hidden = true
        }
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }

}

