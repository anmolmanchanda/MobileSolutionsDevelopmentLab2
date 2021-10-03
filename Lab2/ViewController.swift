//
//  ViewController.swift
//  Lab2
//
//  Created by user197898 on 9/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var country: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var output: UITextView!
    
    var outputArray: Array<String> = []
    
    func printArray()->String{
        var finalOutput = ""
        finalOutput =
            "Full Name : " + "\(outputArray[0])" + " " + "\(outputArray[1])" + "\n" +
            "Country : " +  "\(outputArray[2])" + "\n" +
            "Age : " +  "\(outputArray[3])"
        return finalOutput
     }
    
    @IBAction func btn_add_click(_ sender: UIButton) {
        var fName = firstName.text
        var lName = lastName.text
        var cntry = country.text
        var lengthOfLife =  age.text
        outputArray.append(fName!)
        outputArray.append(lName!)
        outputArray.append(cntry!)
        outputArray.append(lengthOfLife!)
        fName = printArray()
        lName = printArray()
        cntry = printArray()
        lengthOfLife = printArray()
        output.text = fName
        output.text = lName
        output.text = cntry
        output.text = lengthOfLife
        firstName.text = ""
        lastName.text = ""
        country.text = ""
        
        age.text = ""
    }
    
    
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func btn_submit_click(_ sender: UIButton) {
        label.text = ""
        if ((firstName.text == "") || (lastName.text == "") || (country.text == "") || (age.text == "")){
            label.text = "Complete the missing Info!"
        } else{
            label.text = "Successfully submitted!"
        }
    }
    
    
    @IBAction func btn_clear_click(_ sender: UIButton) {
        firstName.text = ""
        lastName.text = ""
        country.text = ""
        age.text = ""
        label.text = ""
        output.text = ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

