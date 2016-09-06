//
//  ViewController.swift
//  tippies
//
//  Created by Linn S. on 7/25/16.
//  Copyright © 2016 Linne S. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var splitLabel: UILabel!
    var count = 1
    
    @IBOutlet weak var splitControl: UISegmentedControl!
    
//    // ** MARK: Split – To be fixed
//    @IBAction func plusButton(sender: UIButton) {
//        count += 1
//        splitLabel.text = String(count)
//        let split = Double(splitLabel.text!)
//        print(split)
//    }
//
//    @IBAction func minusButton(sender: UIButton) {
//        count -= 1
//        splitLabel.text = String(count)
//        print("-")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // turn the divider off
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        // giving the title a color
//        navigationController?.navigationBar.tintColor = UIColor.blueColor()
//
        // set gradient
        let topColor = UIColor(red: (255/255.0), green: (95/255.0), blue: (109/255.0), alpha: 1)
        let bottomColor = UIColor(red: (255/255.0), green: (195/255.0), blue: (113/255.0), alpha: 1)
        
        let gradientColor: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0.0/1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColor
        gradientLayer.locations = gradientLocations
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0);
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
        
//         way 1 split
        let splitPeople = [1.0, 2.0, 3.0, 4.0, 5.0]
        let split = splitPeople[splitControl.selectedSegmentIndex]

//         way 2 split
//        let split = Double(splitLabel.text!) ?? 0
        
        
        let subtotal = bill + tip
        let total = subtotal / split
        
        tipLabel.text = String(format: "$%.2f", tip)
        
//        splitLabel.text ="\(split)"
        splitLabel.text = String(format: "%.f", split)
        
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    

}


//class NavigationController: UINavigationController, UIViewControllerTransitioningDelegate {
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Status bar white font
//        self.navigationBar.barStyle = UIBarStyle.Black
//        self.navigationBar.tintColor = UIColor.whiteColor()
//    }
//}


