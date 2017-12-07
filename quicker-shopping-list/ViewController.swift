//
//  ViewController.swift
//  quicker-shopping-list
//
//  Created by Robert Argume and Ling Bao
//  Copyright © 2017 Robert Argume. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let initialQuantityValue = "1"
    
    @IBOutlet weak var shoppingListName: UITextField!
    
    @IBOutlet weak var shoppingListItem: UITextField!
    @IBOutlet weak var quantityLabel: UILabel!
    
//    @IBOutlet weak var shoppingListItem2: UITextField!
//    @IBOutlet weak var quantityLabel2: UILabel!
//    
//    @IBOutlet weak var shoppingListItem3: UITextField!
//    @IBOutlet weak var quantityLabel3: UILabel!
//    
//    @IBOutlet weak var shoppingListItem4: UITextField!
//    @IBOutlet weak var quantityLabel4: UILabel!
//    
//    @IBOutlet weak var shoppingListItem5: UITextField!
//    @IBOutlet weak var quantityLabel5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quantityLabel.text = initialQuantityValue
    }

    @IBAction func minusButtonPressed(_ sender: UIButton) {
        var quantity = Int(quantityLabel.text!)!
        
        if sender.tag == 1 {
             quantity = quantity + 1
        }
        else {
            quantity = quantity > 0 ? quantity - 1 : 0
        }
        quantityLabel.text = String(quantity)
        
    }
    
    @IBAction func onTapGestureRecognized(_ sender: Any) {
        shoppingListItem.resignFirstResponder()
        quantityLabel.text = initialQuantityValue
    }
    
   
    @IBAction func onCancelButtonPressed(_ sender: UIButton) {
        shoppingListName.text = ""
        shoppingListItem.text = ""
        quantityLabel.text = initialQuantityValue
    }
    
    @IBAction func onSaveButtonPressed(_ sender: UIButton) {
    }
}

