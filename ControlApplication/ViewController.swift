//
//  ViewController.swift
//  ControlApplication
//
//  Created by Oleg Mytryniuk on 2019-10-02.
//  Copyright © 2019 Oleg Mytryniuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var switchALabel: UILabel!
    @IBOutlet weak var switchBLabel: UILabel!
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped))
        self.view.addGestureRecognizer(tapGesture)
        let sliderDefaultValue:Int = Int(round(slider.value))
        self.sliderLabel.text = "\(sliderDefaultValue)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func textFieldDoneEditing(_ sender: UITextField) {
        sender.resignFirstResponder()
    }

    @objc func viewTapped() {
        nameField.resignFirstResponder()
        numberField.resignFirstResponder()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let progress = Int(round(sender.value))
        sliderLabel.text = "\(progress)"
    }
    
    @IBAction func toggleControls(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0) {
            switchALabel.isHidden = false
            switchBLabel.isHidden = false
            rightSwitch.isHidden = false
            leftSwitch.isHidden = false
            button.isHidden = true
        } else {
            switchALabel.isHidden = true
            switchBLabel.isHidden = true
            rightSwitch.isHidden = true
            leftSwitch.isHidden = true
            button.isHidden = false
        }
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        let isOn = sender.isOn
        self.leftSwitch.setOn(isOn, animated: true)
        self.rightSwitch.setOn(isOn, animated: true)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.sliderLabel.text = "0"
        self.slider.value = 0
    }
    
}

