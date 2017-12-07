//
//  ViewController.swift
//  quicker-shopping-list
//
//  Ling Bao  300901785
//  Robert Argume 300949529

import UIKit

class ViewController: UIViewController {
    // default initial values
    let initialQuantityValue = "1"
    let defaultShoppingListName = "Shopping List"
    
    // OUTLETS: Text views that we need to update
    @IBOutlet weak var shoppingListName: UITextField!
    
    @IBOutlet weak var shoppingListItem: UITextField!
    @IBOutlet weak var quantityLabel: UILabel!
    
    @IBOutlet weak var shoppingListItem3: UITextField!
    @IBOutlet weak var quantityLabel3: UILabel!
    
    @IBOutlet weak var shoppingListItem2: UITextField!
    @IBOutlet weak var quantityLabel2: UILabel!
    
    
    @IBOutlet weak var shoppingListItem4: UITextField!
    @IBOutlet weak var quantityLabel4: UILabel!
    
    @IBOutlet weak var shoppingListItem5: UITextField!
    @IBOutlet weak var quantityLabel5: UILabel!
    
    // Override function for protocol
    override func viewDidLoad() {
        super.viewDidLoad()
        shoppingListName.text = defaultShoppingListName
        quantityLabel.text = initialQuantityValue
        quantityLabel2.text = initialQuantityValue
        quantityLabel3.text = initialQuantityValue
        quantityLabel4.text = initialQuantityValue
        quantityLabel5.text = initialQuantityValue
    }

    @IBAction func minusButtonPressed(_ sender: UIButton) {
        updateQuantityLabel(sender, quantityLabel)
    }
    
    @IBAction func quantityButton2Pressed(_ sender: UIButton) {
        updateQuantityLabel(sender, quantityLabel2)
    }
    
    @IBAction func quantityButton3Pressed(_ sender: UIButton) {
        updateQuantityLabel(sender, quantityLabel3)
    }
    
    @IBAction func quantityButton4Pressed(_ sender: UIButton) {
        updateQuantityLabel(sender, quantityLabel4)
    }
    
    @IBAction func quantityButton5Pressed(_ sender: UIButton) {
        updateQuantityLabel(sender, quantityLabel5)
    }
    
    @IBAction func onTapGestureRecognized(_ sender: Any) {
        shoppingListItem.resignFirstResponder()
        quantityLabel.text = initialQuantityValue
    }
    
   
    @IBAction func onCancelButtonPressed(_ sender: UIButton) {
        shoppingListName.text = defaultShoppingListName
        shoppingListItem.text = ""
        shoppingListItem2.text = ""
        shoppingListItem3.text = ""
        shoppingListItem4.text = ""
        shoppingListItem5.text = ""
        quantityLabel.text = initialQuantityValue
        quantityLabel2.text = initialQuantityValue
        quantityLabel3.text = initialQuantityValue
        quantityLabel4.text = initialQuantityValue
        quantityLabel5.text = initialQuantityValue
    }
    
    @IBAction func onSaveButtonPressed(_ sender: UIButton) {
    }
    
    // Private method to reuse the functionality of adding or substracting items
    // We use tag for button that adds and substract items
    private func updateQuantityLabel(_ sender: UIButton, _ quantityLabel: UILabel!) {
        var quantity = Int(quantityLabel.text!)!
        // 1 corresponds to Add button
        if sender.tag == 1 {
            quantity = quantity + 1
        }
        else { // Default 0 corresponds to Substract buttons
            quantity = quantity > 0 ? quantity - 1 : 0
        }
        quantityLabel.text = String(quantity)
    }
}

