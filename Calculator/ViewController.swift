//
//  ViewController.swift
//  Calculator
//
//  Created by Chris Snyder on 9/17/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isTyping = false
    var firstNumber = 0
    var secondNumber = 0
    var result = 0
    var operation = ""

    @IBOutlet weak var calculatorDisplay: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorDisplay.text = "Let's do some math!"
    }



    @IBAction func numberTapped(sender: UIButton)
    {
        var number = sender.currentTitle!
        isTyping = true

        if isTyping
        {
            calculatorDisplay.text = number
        }


    }

    @IBAction func calculationTapped(sender: AnyObject)
    {
        firstNumber = calculatorDisplay.text!.toInt()!
        println(firstNumber)

        var numberTwo = sender.currentTitle!
        operation = sender.currentTitle!!

        isTyping = true
        if isTyping{
            calculatorDisplay.text = numberTwo
        }

    }

    @IBAction func equalTapped(sender: AnyObject)
    {
        secondNumber = calculatorDisplay.text!.toInt()!

        if operation == "+" {
            result = firstNumber + secondNumber
            calculatorDisplay.text = "\(result)"
        } else if operation == "-" {
            result = firstNumber - secondNumber
            calculatorDisplay.text = "\(result)"
        } else if operation == "x" {
            result = firstNumber * secondNumber
            calculatorDisplay.text = "\(result)"
        } else if operation == "/" {
            result = firstNumber / secondNumber
            calculatorDisplay.text = "\(result)"
        }




    }


}

