//
//  ViewController.swift
//  Prework
//
//  Created by Mohamed Hasan on 1/21/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextFile: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text file input
        let bill = Double(billAmountTextFile.text!) ?? 0
        
        //get tip amout by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update total amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

