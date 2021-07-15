//
//  ticTacToeViewController.swift
//  5,3,1 or 2!
//
//  Created by Richard on 5/4/17.
//  Copyright © 2017 cs.eku.edu. All rights reserved.
//

import UIKit
import Contacts     // be able to use NSPostalAddddddddress
import CoreLocation // be able to use coordinate (latitude and longitude)
import MapKit
class ticTacToeViewController: UIViewController {
    var curPlayer = 1 // always start with player 1 as X's
    var curRestaurant: String = ""
    var coords: CLLocationCoordinate2D?
    
    @IBOutlet weak var currentPlayerImage: UIImageView!
    
    var arr: [Int] = [0,10,20,30,40,50,60,70,80]
    
    @IBOutlet weak var space00: UIButton!// 0
    @IBOutlet weak var space01: UIButton!// 1
    @IBOutlet weak var space02: UIButton!// 2
    @IBOutlet weak var space10: UIButton!// 3
    @IBOutlet weak var space11: UIButton!// 4
    @IBOutlet weak var space12: UIButton!// 5
    @IBOutlet weak var space20: UIButton!// 6
    @IBOutlet weak var space21: UIButton!// 7
    @IBOutlet weak var space22: UIButton!// 8
    
    /*
     00-0
     01-1
     02-2
     10-3
     11-4
     12-5
     20-6
     21-7
     22-8
     */
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func quitGame(_ sender: UIButton)
    {
         dismiss(animated: true, completion: nil)
    }
    
    func getDirections()
    {
        let addressString = "\(curRestaurant) Richmond Kentucky 40475"
        // geocoding
        CLGeocoder().geocodeAddressString(addressString, completionHandler: {
            (placemarks, error)
            in
            if error != nil{
                print("Geocode failed: \(error!.localizedDescription)")
            }
            else if placemarks!.count > 0 {
                let placemark = placemarks![0]
                self.coords = placemark.location!.coordinate
                
                self.showMap()
            }
        })
    }
    func showMap() {
        let addressDict = [
            CNPostalAddressStreetKey: curRestaurant,
            CNPostalAddressCityKey: "Richmond",
            CNPostalAddressStateKey: "Kentucky",
            CNPostalAddressPostalCodeKey: "40475"
        ]
        
        // construct a placemark object
        let place = MKPlacemark(coordinate: coords!, addressDictionary: addressDict)
        
        let mapItem = MKMapItem(placemark: place)
        
        let options = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        mapItem.openInMaps(launchOptions: options)
    }

    
    @IBAction func ocupy00(_ sender: UIButton)
    {
        if(arr[0] == 0){
            switch curPlayer
            {
            case 1:
                space00.setBackgroundImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
                curPlayer = 0
                arr[0] = 1
                currentPlayerImage.image = #imageLiteral(resourceName: "o")
                winCondition()
                break
            default:
                space00.setBackgroundImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
                curPlayer = 1
                arr[0] = -1
                currentPlayerImage.image = #imageLiteral(resourceName: "x")
                winCondition()
                break
            }
        }
    }
    
    @IBAction func ocupy01(_ sender: UIButton)
    {
        if(arr[1] == 10) {
        switch curPlayer {
        case 1:
            space01.setBackgroundImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
            curPlayer = 0
            arr[1] = 1
            currentPlayerImage.image = #imageLiteral(resourceName: "o")
            winCondition()
            break
        default:
            space01.setBackgroundImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
            curPlayer = 1
            arr[1] = -1
            currentPlayerImage.image = #imageLiteral(resourceName: "x")
            winCondition()
            break
        }
        }
    }
    
    @IBAction func ocupy02(_ sender: UIButton)
    {
        if(arr[2] == 20){
        switch curPlayer {
        case 1:
            space02.setBackgroundImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
            curPlayer = 0
            arr[2] = 1
            currentPlayerImage.image = #imageLiteral(resourceName: "o")
            winCondition()
            break
        default:
            space02.setBackgroundImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
            curPlayer = 1
            arr[2] = -1
            currentPlayerImage.image = #imageLiteral(resourceName: "x")
            winCondition()
            break
        }
        }
    }
    
    @IBAction func ocupy10(_ sender: UIButton)
    {
        if(arr[3] == 30){
        switch curPlayer {
        case 1:
            space10.setBackgroundImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
            curPlayer = 0
            arr[3] = 1
            currentPlayerImage.image = #imageLiteral(resourceName: "o")
            winCondition()
            break
        default:
            space10.setBackgroundImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
            curPlayer = 1
            arr[3] = -1
            currentPlayerImage.image = #imageLiteral(resourceName: "x")
            winCondition()
            break
        }
        }
    }

    @IBAction func ocupy11(_ sender: UIButton)
    {
        if(arr[4] == 40){
        switch curPlayer {
        case 1:
            space11.setBackgroundImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
            curPlayer = 0
            arr[4] = 1
            currentPlayerImage.image = #imageLiteral(resourceName: "o")
            winCondition()
            break
        default:
            space11.setBackgroundImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
            curPlayer = 1
            arr[4] = -1
            currentPlayerImage.image = #imageLiteral(resourceName: "x")
            winCondition()
            break
        }
        }

    }

    @IBAction func ocupy12(_ sender: UIButton)
    {
        if(arr[5] == 50){
        switch curPlayer {
        case 1:
            space12.setBackgroundImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
            curPlayer = 0
            arr[5] = 1
            currentPlayerImage.image = #imageLiteral(resourceName: "o")
            winCondition()
            break
        default:
            space12.setBackgroundImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
            curPlayer = 1
            arr[5] = -1
            currentPlayerImage.image = #imageLiteral(resourceName: "x")
            winCondition()
            break
        }
        }
    }
    
    @IBAction func ocupy20(_ sender: UIButton)
    {
        if(arr[6] == 60){
        switch curPlayer {
        case 1:
            space20.setBackgroundImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
            curPlayer = 0
            arr[6] = 1
            currentPlayerImage.image = #imageLiteral(resourceName: "o")
            winCondition()
            break
        default:
            space20.setBackgroundImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
            curPlayer = 1
            arr[6] = -1
            currentPlayerImage.image = #imageLiteral(resourceName: "x")
            winCondition()
            break
        }
        }
    }
    @IBAction func ocupy21(_ sender: UIButton)
    {
        if(arr[7] == 70){
        switch curPlayer {
        case 1:
            space21.setBackgroundImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
            curPlayer = 0
            arr[7] = 1
            currentPlayerImage.image = #imageLiteral(resourceName: "o")
            winCondition()
            break
        default:
            space21.setBackgroundImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
            curPlayer = 1
            arr[7] = -1
            currentPlayerImage.image = #imageLiteral(resourceName: "x")
            winCondition()
            break
        }
        }
    }
    @IBAction func ocupy22(_ sender: UIButton)
    {
        if(arr[8] == 80){
        switch curPlayer {
        case 1:
            space22.setBackgroundImage(#imageLiteral(resourceName: "x"), for: UIControlState.normal)
            curPlayer = 0
            arr[8] = 1
            currentPlayerImage.image = #imageLiteral(resourceName: "o")
            winCondition()
            break
        default:
            space22.setBackgroundImage(#imageLiteral(resourceName: "o"), for: UIControlState.normal)
            curPlayer = 1
            arr[8] = -1
            currentPlayerImage.image = #imageLiteral(resourceName: "x")
            winCondition()
            break
            }
        }
    }
    func winCondition()
    {
        var gO = 0
        for i in 0..<(arr.count) {
            if arr[i] == 1 || arr[i] == -1{
                gO = gO + 1
            }
        }
            // only 8 ways to win a 3x3 tic tac toe game
            /*
             00-0
             01-1
             02-2
             10-3
             11-4
             12-5
             20-6
             21-7
             22-8
             */
        if gO >= 3 {
            if (arr[0] == arr[1] && arr[1] == arr[2]) ||
                (arr[3] == arr[4] && arr[4] == arr[5]) ||
                (arr[6] == arr[7] && arr[7] == arr[8]) ||
                (arr[0] == arr[3] && arr[3] == arr[6]) ||
                (arr[1] == arr[4] && arr[4] == arr[7]) ||
                (arr[2] == arr[5] && arr[5] == arr[8]) ||
                (arr[0] == arr[4] && arr[4] == arr[8]) ||
                (arr[2] == arr[4] && arr[4] == arr[6])
            {   //win
                let alertController = UIAlertController(title: "Looks like we've got a winner!", message: "\(getRestaurant())", preferredStyle: UIAlertControllerStyle.alert)
                
                let leaveAction = UIAlertAction(title: "I know the way!", style: UIAlertActionStyle.default, handler: {(alertAction: UIAlertAction!) in self.dismiss(animated: true, completion: nil)})
                
                let directionAction = UIAlertAction(title: "Take me there!", style: UIAlertActionStyle.default, handler: {(alertAction: UIAlertAction!) in self.getDirections()})
                
                alertController.addAction(leaveAction)
                alertController.addAction(directionAction)
                
                present(alertController, animated: true, completion: nil)
            }
                
            else if gO == 9// if all places on the board are taken up by either x or o, chekc for win
            {   //tie
            let alertController = UIAlertController(title: "Looks like we've got a tie!", message: "willing to play again?", preferredStyle: UIAlertControllerStyle.alert)
            
            let nahAction = UIAlertAction(title: "nah..", style: UIAlertActionStyle.default, handler: {(alertAction: UIAlertAction!) in self.dismiss(animated: true, completion: nil)})
            
            let heckyeahAction = UIAlertAction(title: "Heck yeah", style: UIAlertActionStyle.default, handler: nil)
            
            alertController.addAction(nahAction)
            alertController.addAction(heckyeahAction)
            
            present(alertController, animated: true, completion: nil)
            }
        }
    }
    func getRestaurant() -> String
    {
     // depending on curPlayer will return the winning players restaraunt
        let vs = (presentingViewController as! or2_ViewController)
        if curPlayer == 1 {
            curRestaurant = vs.restaurant1Choice.text!
            return "\(curRestaurant)'s restaurant is the winner"
        } else {
            curRestaurant = vs.restaurant2Choice.text!
            return "\(curRestaurant)'s restaurant is the winner"
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
