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
    
    private var total = 0
    
    //    @IBAction func segumentedControlValueChanged(_ sender: UISegmentedControl) {
    //
    //    }
    
    
    @IBAction func button(_ sender: UIButton) {
        switch segumentedControl.selectedSegmentIndex {
        case 0:
            total = (Int(textFeild1.text!)) ?? 0
            total += (Int(textField2.text!)) ?? 0
        case 1:
            total = (Int(textFeild1.text!)) ?? 0
            total -= (Int(textField2.text!)) ?? 0
        case 2:
            total = (Int(textFeild1.text!)) ?? 0
            total *= (Int(textField2.text!)) ?? 0
        case 3:
            if (Int(textField2.text!)) ?? 0 == 0 {
                label.text = String("0以外の数字を入れて下さい")
                return
            }else{
            total = (Int(textFeild1.text!)) ?? 0
            total /= (Int(textField2.text!)) ?? 0
            }
        default:
            return
        }
        label.text = String(total)
    }
}



