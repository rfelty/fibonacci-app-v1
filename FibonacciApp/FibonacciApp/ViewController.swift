//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Rick Felty on 4/5/15.
//  Copyright (c) 2015 Rick Felty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    @IBAction func updateFibonacciSequence() {
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
        textView.text = fibonacciSequence.values.description
        if includesZeroSwitch.on {
            includesZeroLabel.text = "Yes"
        } else {
            includesZeroLabel.text = "No"
        }
        numberOfItemsLabel.text = String(Int(numberOfItemsSlider.value))
    }
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    @IBOutlet weak var includesZeroLabel: UILabel!
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    @IBOutlet weak var includesZeroSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.updateFibonacciSequence()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}