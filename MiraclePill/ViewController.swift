//
//  ViewController.swift
//  MiraclePill
//
//  Created by Younoussa Ousmane Abdou on 11/2/16.
//  Copyright © 2016 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let states = ["Alaska", "Alabama", "California", "Maine", "New York", "Texas"]
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var stateButton: UIButton!
    
    @IBAction func stateButtonPressed(_ sender: AnyObject) {
     
        statePicker.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        stateButton.setTitle(states[row], for: .normal)
        
        statePicker.isHidden = true
    }
}
