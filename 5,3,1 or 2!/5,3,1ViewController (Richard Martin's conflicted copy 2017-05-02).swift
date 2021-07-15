//
//  5,3,1ViewController.swift
//  5,3,1 or 2!
//
//  Created by Richard on 4/20/17.
//  Copyright © 2017 cs.eku.edu. All rights reserved.
//

import UIKit

class __3_1ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    var pickerView: UIPickerView = UIPickerView()
    var willingToDrive = 0
    let dataLimit = 100_000
    var generate = 0
    var cnt = 0
    var choice = 15
    
    @IBOutlet weak var willingToDriveLabel: UILabel!
    
    @IBOutlet weak var restaurant1: UIButton!
    @IBOutlet weak var restaurant2: UIButton!
    @IBOutlet weak var restaurant3: UIButton!
    @IBOutlet weak var restaurant4: UIButton!
    @IBOutlet weak var restaurant5: UIButton!
    
    @IBAction func returnScreen(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        pickerView.selectRow(dataLimit/2, inComponent: 0, animated: false)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func generateRestaurants(_ sender: UIButton)
    {
        generate = 1
        cnt = 0
        choice = 15
        print(choice)
        //this is where we grab 5 random restaurant names and assign their names to the button titles
        restaurant1.setTitle("1", for: UIControlState.normal)
        restaurant2.setTitle("2", for: UIControlState.normal)
        restaurant3.setTitle("3", for: UIControlState.normal)
        restaurant4.setTitle("4", for: UIControlState.normal)
        restaurant5.setTitle("5", for: UIControlState.normal)
    }
    
    @IBAction func choose1(_ sender: UIButton)
    {
        if generate == 1
        {
            restaurant1.setTitle(" ", for: UIControlState.normal)
            cnt = cnt+1
            choice = choice - 1
            print(choice)
            if cnt == 4
            {
                displayChoice(c: choice)
            }
        }
    }
    @IBAction func choose2(_ sender: UIButton)
    {
        if generate == 1
        {
            restaurant2.setTitle(" ", for: UIControlState.normal)
            cnt = cnt+1
            choice = choice - 2
            print(choice)
            if cnt == 4
            {
                displayChoice(c: choice)
            }
        }
    }
    @IBAction func choose3(_ sender: UIButton)
    {
        if generate == 1
        {
            restaurant3.setTitle(" ", for: UIControlState.normal)
            cnt = cnt+1
            choice = choice - 3
            print(choice)
            if cnt == 4
            {
                displayChoice(c: choice)
            }
        }
    }
    @IBAction func choose4(_ sender: UIButton)
    {
        if generate == 1
        {
            restaurant4.setTitle(" ", for: UIControlState.normal)
            cnt = cnt+1
            choice = choice - 4
            print(choice)
            if cnt == 4
            {
                displayChoice(c: choice)
            }
        }
    }
    @IBAction func choose5(_ sender: UIButton)
    {
        if generate == 1
        {
            restaurant5.setTitle(" ", for: UIControlState.normal)
            cnt = cnt+1
            choice = choice - 5
            if cnt == 4
            {
                displayChoice(
                    c: choice)
            }
        }
    }
    
    func displayChoice(c: Int)
    {//just need alert to display 2 buttons, 
        //'i know where to go', and 'take me there'
        //the first will close the app
        //the second will open maps and direct them to the restaurant
        switch c {
        case 2:
            print(2)
        case 3:
            print(3)
        case 4:
            print(4)
        case 5:
            print(5)
        default:
            print(1)
        }
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return dataLimit
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return "\((row % 7)*5)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        willingToDrive = (Int)(pickerView.selectedRow(inComponent: 0).description)!
        willingToDrive = ((willingToDrive%7)*5)
        willingToDriveLabel.text = "Willing to drive raius: \(willingToDrive) miles"
        let position = dataLimit/2 + row
        pickerView.selectRow(position, inComponent: 0, animated: false)
    }
   

}
