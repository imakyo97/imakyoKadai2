//
//  ViewController.swift
//  Kadai2
//
//  Created by 今村京平 on 2021/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet private weak var textFeild1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    
    @IBOutlet private weak var label: UILabel!
    
    @IBOutlet private weak var segumentedControl: UISegmentedControl!
    
    @IBAction private func button(_ sender: UIButton) {
        
        let num1 = Int(textFeild1.text!) ?? 0
        let num2 = Int(textField2.text!) ?? 0
        let resultText: String
        
        switch segumentedControl.selectedSegmentIndex {
        case 0:
            resultText = String(num1 + num2)
        case 1:
            resultText = String(num1 - num2)
        case 2:
            resultText = String(num1 * num2)
        case 3:
            if num2 == 0 {
                resultText = String("0以外の数字を入れて下さい")
            }else{
                resultText = String(num1 / num2)
            }
        default:
            return
        }
        
        label.text = resultText
        
    }
}




