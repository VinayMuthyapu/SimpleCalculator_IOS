//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Vinay Muthyapu on 05/06/23.
//

import UIKit

class ViewController: UIViewController
{
    var first = ""
    var second = ""
    var function = ""
    var results = 0.0
    var userInput = ""
    var isAdvance: Bool = false
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var history: UITextView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    @IBOutlet weak var CalculatorDisplay: UILabel!
    @IBAction func ClearButton(_ sender: Any)
    {
        first = ""
        second = ""
        function = ""
        userInput = ""
        results = 0.0
        CalculatorDisplay.text = ""
        
    }
    @IBAction func AddButton(_ sender: Any)
    {
        function = "+"
        first = userInput
        
        CalculatorDisplay.text! += function
        CalculatorDisplay.text?.append(" ")
        userInput = ""
        
    }
    @IBAction func MinusButton(_ sender: Any)
    {
        function = "-"
        first = userInput
        
        CalculatorDisplay.text! += function
        CalculatorDisplay.text?.append(" ")
        userInput = ""
        
    }
    @IBAction func MultiplyButton(_ sender: Any)
    {
        function = "*"
        first = userInput
        
        CalculatorDisplay.text! += function
        CalculatorDisplay.text?.append(" ")
        userInput = ""
        
    }
    @IBAction func DivideButton(_ sender: Any)
    {
        function = "/"
        first = userInput
        CalculatorDisplay.text! += function
        CalculatorDisplay.text?.append(" ")
        userInput = ""
    }
    @IBAction func EqualButton(_ sender: Any)
    {
        second = userInput
        var firstInput = 0.0
        var secondInput = 0.0
        firstInput = Double(first)!
        secondInput = Double(second)!
        if(function == "+")
        {
            results = firstInput + secondInput
            CalculatorDisplay.text?.append("= ")
            CalculatorDisplay.text?.append(String(results))
            
        }
        else if(function == "-")
        {
            results = firstInput - secondInput
            CalculatorDisplay.text?.append("= ")
            CalculatorDisplay.text?.append(String(results))
        }
        else if(function == "*")
        {
            results = firstInput * secondInput
            CalculatorDisplay.text?.append("= ")
            CalculatorDisplay.text?.append(String(results))
        }
        else
        {
            results = firstInput / secondInput
            CalculatorDisplay.text?.append("= ")
            CalculatorDisplay.text?.append(String(results))
        }
        if isAdvance == true{
            
            history?.text.append(CalculatorDisplay.text! + "\n")
            
            }
    }
    @IBAction func ZeroButtton(_ sender: Any)
    {
        //CalculatorDisplay.text = ""
        userInput += "0"
        CalculatorDisplay.text = userInput
        CalculatorDisplay.text?.append(" ")
            }
    @IBAction func OneButton(_ sender: Any)
    {
        //CalculatorDisplay.text = ""
        userInput += "1"
        CalculatorDisplay.text! += userInput
        CalculatorDisplay.text?.append(" ")
    }
    @IBAction func TwoButton(_ sender: Any)
    {
        //CalculatorDisplay.text = ""
        userInput += "2"
        CalculatorDisplay.text! += userInput
        CalculatorDisplay.text?.append(" ")
    }
    @IBAction func ThreeButton(_ sender: Any)
    {
        //CalculatorDisplay.text = ""
        userInput += "3"
        CalculatorDisplay.text! += userInput
        CalculatorDisplay.text?.append(" ")
    }
    @IBAction func FourButton(_ sender: Any)
    {
        //CalculatorDisplay.text = ""
        userInput += "4"
        CalculatorDisplay.text! += userInput
        CalculatorDisplay.text?.append(" ")
        
    }
    @IBAction func FiveButton(_ sender: Any)
    {
        //CalculatorDisplay.text = ""
        userInput += "5"
        CalculatorDisplay.text! += userInput
        CalculatorDisplay.text?.append(" ")
        
    }
    @IBAction func SixButton(_ sender: Any)
    {
        //CalculatorDisplay.text = ""
        userInput += "6"
        CalculatorDisplay.text! += userInput
        CalculatorDisplay.text?.append(" ")
        
    }
    @IBAction func SevenButton(_ sender: Any)
    {
        //CalculatorDisplay.text = ""
        userInput += "7"
        CalculatorDisplay.text! += userInput
        CalculatorDisplay.text?.append(" ")
    }
    @IBAction func EightButton(_ sender: Any)
    {
        //CalculatorDisplay.text = ""
        userInput += "8"
        CalculatorDisplay.text! += userInput
        CalculatorDisplay.text?.append(" ")
    }
    @IBAction func NineButton(_ sender: Any)
    {
        //CalculatorDisplay.text = ""
        userInput += "9"
        CalculatorDisplay.text! += userInput
        CalculatorDisplay.text?.append(" ")
    }
    @IBAction func HistoryButton(_ sender: UIButton)
    {
        if  isAdvance == false{
            sender.setTitle("Standard - No History", for: .normal)
            history?.backgroundColor = UIColor.lightGray
            history?.isEditable = false
            isAdvance = true
        }
        else{
            sender.setTitle("Advance - With History", for: .normal)
            history?.isEditable = false
            history?.backgroundColor = UIColor.white
            history?.text? = ""
            isAdvance = false
        }
    }
}

