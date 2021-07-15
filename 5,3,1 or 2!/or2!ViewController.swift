//
//  or2!ViewController.swift
//  5,3,1 or 2!
//
//  Created by Richard on 4/20/17.
//  Copyright © 2017 cs.eku.edu. All rights reserved.
//

import UIKit

class or2_ViewController: UIViewController {

    @IBOutlet weak var restaurant1Choice: UITextField!
    
    @IBOutlet weak var restaurant2Choice: UITextField!
    
    @IBAction func dismissScreen(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func dismissKeyboard(_ sender: UIButton)
    {
        restaurant1Choice.resignFirstResponder()
        restaurant2Choice.resignFirstResponder()
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
