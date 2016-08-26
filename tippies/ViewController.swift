//
//  ViewController.swift
//  tippies
//
//  Created by Linn S. on 8/25/16.
//  Copyright © 2016 Linne S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var splitControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.1, 0.18, 0.2, 0.25]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let splitPeople = [1, 2, 3, 4, 5]
        let split = splitPeople[splitControl.selectedSegmentIndex]
        
        
        let subtotal = bill + tip
        let total = subtotal / Double(split)
        // ? Why split need to be added "Double"? It's integer, isn't it?
        
        tipLabel.text = String(format: "$ %.2f", tip)
        
        splitLabel.text = "\(split)"
        // ? Why it cant just write "split"?
        
        totalLabel.text = String(format: "$ %.2f", total)
        
    }
}

