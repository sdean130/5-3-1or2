//
//  gamesViewController.swift
//  5,3,1 or 2!
//
//  Created by Seth on 5/4/17.
//  Copyright © 2017 cs.eku.edu. All rights reserved.
//

import UIKit

class gamesViewController: UIViewController {
    @IBOutlet weak var xbuttonnot: UIButton!
    @IBAction func dismissGame(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func xbutton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Player 1 wins!", message: "Khin's Sushi was selected", preferredStyle: UIAlertControllerStyle.alert)
        
        let knowAction = UIAlertAction(title: "I know the way!", style: UIAlertActionStyle.default, handler: {(alertAction: UIAlertAction!) in self.dismiss(animated: true, completion: nil)})
        let directionAction = UIAlertAction(title: "Take me there", style: UIAlertActionStyle.default, handler: nil)
        
        alertController.addAction(knowAction)
        alertController.addAction(directionAction)
        
        present(alertController, animated: true, completion: nil)
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
