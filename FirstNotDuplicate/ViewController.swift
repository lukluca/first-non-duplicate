//
//  ViewController.swift
//  FirstNotDuplicate
//
//  Created by Tagliabue, L. on 20/03/2019.
//  Copyright © 2019 Tagliabue, Luca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var firstNonDuplicateButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func firstNonDuplicateButtonAction(sender: UIButton) {
        
        guard let text = inputTextField.text, let char = first_non_duplicate(text) else {
            return
        }
        
        self.resultLabel.text = String(char)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTextField()
        self.setupButton()
        
    }

    private func setupTextField() {
        let borderColor =  UIColor(red: 70/255, green: 92/255, blue: 166/255, alpha: 1)
        self.inputTextField.layer.borderColor = borderColor.cgColor
        self.inputTextField.layer.borderWidth = 2.5
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 1))
        self.inputTextField.leftView = paddingView
        self.inputTextField.leftViewMode = .always
        
        self.inputTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
    }
    
    @objc func textFieldDidChange() {
        
        let valid = inputTextField.text?.isValidInput ?? false
        
        valid ? setupButtonEnable() : setupButtonNotEnable()
    }
    
    private func setupButton() {
        self.firstNonDuplicateButton.layer.cornerRadius = 10
    
        self.setupButtonNotEnable()
    }
    
    
    private func setupButtonEnable() {
        
        self.firstNonDuplicateButton.isEnabled = true
        self.firstNonDuplicateButton.backgroundColor = UIColor(red: 58/255, green: 83/255, blue: 165/255, alpha: 1)
    }
    
    private func setupButtonNotEnable() {
        
        self.firstNonDuplicateButton.isEnabled = false
        self.firstNonDuplicateButton.backgroundColor = .lightGray
    }
}

