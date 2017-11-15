//
//  shopViewController.swift
//  burberry
//
//  Created by Chien yu Tung on 2017/11/15.
//  Copyright © 2017年 ryan. All rights reserved.
//

import UIKit

class shopViewController: UIViewController {

    
    @IBOutlet weak var firstItemButton: UIButton!
    
    @IBOutlet weak var secondItemButton: UIButton!
    
    @IBOutlet weak var thirdItemButton: UIButton!
    
    @IBOutlet weak var fourthItemButton: UIButton!
    
  
    @IBOutlet weak var firstItemCountTextField: UITextField!
    
    @IBOutlet weak var secondItemCountTextField: UITextField!
    
    @IBOutlet weak var thirdItemCountTextField: UITextField!
    
    @IBOutlet weak var fourthItemCountTextField: UITextField!
    
    @IBOutlet weak var firstItemStepper: UIStepper!
    
    @IBOutlet weak var secondItemStepper: UIStepper!
    
    @IBOutlet weak var thirdItemStepper: UIStepper!
    
    
    @IBOutlet weak var fourthItemStepper: UIStepper!
    
    
    @IBOutlet weak var totalmoneyTextField: UITextField!
    

    @IBAction func respondOfItemButtonTouchDown(_ sender: UIButton) {
        switch sender{
        case firstItemButton:
//                     firstItemButton.imageView?.image = UIImage(named:"1_1")
            firstItemButton.setImage(UIImage(named:"1_1"), for: .normal)
        case secondItemButton:
            secondItemButton.setImage(UIImage(named:"2_1"), for: .normal)
        case thirdItemButton:
            thirdItemButton.setImage(UIImage(named:"3_1"), for: .normal)
        case fourthItemButton:
            fourthItemButton.setImage(UIImage(named:"4_1"), for: .normal)
        default:
            break
        }
    }
    
    @IBAction func respondOfItemButtonTouchUpInside(_ sender: UIButton) {
        switch sender {
        case firstItemButton:
            firstItemButton.setImage(UIImage(named:"1"), for: .normal)
        case secondItemButton:
            secondItemButton.setImage(UIImage(named:"2"), for: .normal)
        case thirdItemButton:
            thirdItemButton.setImage(UIImage(named:"3"), for: .normal)
        case fourthItemButton:
            fourthItemButton.setImage(UIImage(named:"4"), for: .normal)
        default:
            break
        }
    }
    
    @IBAction func respondOfItemButtonTouchUpOutside(_ sender: UIButton) {
        switch sender {
        case firstItemButton:
            firstItemButton.setImage(UIImage(named:"1"), for: .normal)
        case secondItemButton:
            secondItemButton.setImage(UIImage(named:"2"), for: .normal)
        case thirdItemButton:
            thirdItemButton.setImage(UIImage(named:"3"), for: .normal)
        case fourthItemButton:
            fourthItemButton.setImage(UIImage(named:"4"), for: .normal)
        default:
            break
        }
    }
    
    
    @IBAction func StepperValueChanged(_ sender: UIStepper) {
        switch sender{
        case firstItemStepper:
            firstItemCountTextField.text = "\(firstItemStepper.value )"
        case secondItemStepper:
            secondItemCountTextField.text = "\(secondItemStepper.value  )"
        case thirdItemStepper:
            thirdItemCountTextField.text = "\(thirdItemStepper.value )"
        case fourthItemStepper:
            fourthItemCountTextField.text = "\(fourthItemStepper.value  )"
        default:
            break
        }
        totalmoneyTextField.text = " \( (firstItemStepper.value * 1100) + (secondItemStepper.value * 1100) +   (thirdItemStepper.value * 950) +   (fourthItemStepper.value * 1050 ) )"
    }
    
    
    @IBAction func reselectButtonTouchUpInside(_ sender: Any) {
        firstItemStepper.value = 0
        secondItemStepper.value = 0
        thirdItemStepper.value = 0
        fourthItemStepper.value = 0
        firstItemCountTextField.text = "0"
        secondItemCountTextField.text = "0"
        thirdItemCountTextField.text = "0"
        fourthItemCountTextField.text = "0"
        totalmoneyTextField.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
