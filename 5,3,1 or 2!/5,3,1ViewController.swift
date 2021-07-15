//
//  5,3,1ViewController.swift
//  5,3,1 or 2!
//
//  Created by Richard on 4/20/17.
//  Copyright © 2017 cs.eku.edu. All rights reserved.


import UIKit
import Contacts     // be able to use NSPostalAddddddddress
import CoreLocation // be able to use coordinate (latitude and longitude)
import MapKit       // for MapItem or MapView

class __3_1ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    var pickerView: UIPickerView = UIPickerView()
    var willingToDrive = 0
    let dataLimit = 100_000
    var generate = 0
    var cnt = 0
    var choice = 15
    var location = ""
    
    var coords: CLLocationCoordinate2D?
    
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
        var n1 = 0
        var n2 = 0
        var n3 = 0
        var n4 = 0
        var n5 = 0
        // while loop to prevent duplicate restaurants
        while n1 == n2 || n1 == n3 || n1 == n4 || n1 == n5 ||
              n2 == n1 || n2 == n3 || n2 == n4 || n2 == n5 ||
              n3 == n1 || n3 == n2 || n3 == n4 || n3 == n5 ||
              n4 == n1 || n4 == n2 || n4 == n3 || n3 == n5 ||
              n5 == n1 || n5 == n2 || n5 == n3 || n5 == n4
        {
            n1 = Int(arc4random_uniform(UInt32(randomRestaurant(m: willingToDrive).count)))
            n2 = Int(arc4random_uniform(UInt32(randomRestaurant(m: willingToDrive).count)))
            n3 = Int(arc4random_uniform(UInt32(randomRestaurant(m: willingToDrive).count)))
            n4 = Int(arc4random_uniform(UInt32(randomRestaurant(m: willingToDrive).count)))
            n5 = Int(arc4random_uniform(UInt32(randomRestaurant(m: willingToDrive).count)))
        }
        //this is where we grab 5 random restaurant names and assign their names to the button titles
        let r1 = randomRestaurant(m: willingToDrive)[n1]
        let r2 = randomRestaurant(m: willingToDrive)[n2]
        let r3 = randomRestaurant(m: willingToDrive)[n3]
        let r4 = randomRestaurant(m: willingToDrive)[n4]
        let r5 = randomRestaurant(m: willingToDrive)[n5]

        restaurant1.setTitle(r1, for: UIControlState.normal)
        restaurant2.setTitle(r2, for: UIControlState.normal)
        restaurant3.setTitle(r3, for: UIControlState.normal)
        restaurant4.setTitle(r4, for: UIControlState.normal)
        restaurant5.setTitle(r5, for: UIControlState.normal)
    }
    
    @IBAction func choose1(_ sender: UIButton)
    {
        if generate == 1
        {
            restaurant1.setTitle(" ", for: UIControlState.normal)
            choice = choice - 1
            cnt = cnt+1
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
             choice = choice - 2
            cnt = cnt+1
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
             choice = choice - 3
            cnt = cnt+1
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
            choice = choice - 5
            cnt = cnt+1
            if cnt == 4
            {
                displayChoice(c: choice)
            }
        }
    }
    
    func displayChoice(c: Int)
    {
        switch c {
        case 2:
            displayAlert(r: (restaurant2.titleLabel?.text!)!)
        case 3:
            displayAlert(r: (restaurant3.titleLabel?.text!)!)
        case 4:
            displayAlert(r: (restaurant4.titleLabel?.text!)!)
        case 5:
            displayAlert(r: (restaurant5.titleLabel?.text!)!)
        default:
            displayAlert(r: (restaurant1.titleLabel?.text!)!)
        }
    }
    
    func randomRestaurant(m: Int) -> Array<String>
    {
        var r: [String] = []
        switch m {
        case 5:
            r = ["Taco Bell", "McDonalds", "Jackson's", "Apollo Pizza", "Cafe Meeples", "Madison Garden Bar and Grill", "Thai Smile", "Casa Fiesta", "Subway", "Babylon Gyro's", "Purdy's Coffee Co.", "Fong's", "Jimmy John's", "Qdoba", "Penn Station", "Rally's", "Hardee's", "Hooters", "King Buffet", "Papa John's", "Chic-fil-A", "Cook Out", "A&W", "Arby's", "Wendy's", "Little Ceasers", "Waffle House", "O'Charlys", "White Castle", "Applebee's", "Red Lobster", "Giovanni's", "Cracker Barrel", "Gillum's", "Sonic", "Smitty's", "Pizza Hut", "Masala", "IHop", "Frish's Big Boy", "Logan's Roadhouse", "Sonny's BBQ", "Olive Garden", "El Mejor", "Casa Cafe", "Hardee's", "Culvers", "Koto Japanese Bistro", "Hanger's Steakhouse", "Steak'n Shake", "Outback Steakhouse", "Buffalo Wild Wings", "Golden Corral", "Snappy", "El Mejor", "Sidelines", "Nuevo", "Lee's Famous Recipe Chicken", "Kfc", "Dairy Queen", "Better Burgers and More", "Firehouse Sub's", "Outback Steakhouse", "McAlister's Deli", "Khins Sushi", "Panera Bread", "Burger King", "Raising Cane's", "Culvers", "Zaxbys"]
            return r
        case 10:
            r = ["Taco Bell", "McDonalds", "Jackson's", "Apollo Pizza", "Cafe Meeples", "Madison Garden Bar and Grill", "Thai Smile", "Casa Fiesta", "Subway", "Babylon Gyro's", "Purdy's Coffee Co.", "Fong's", "Jimmy John's", "Qdoba", "Penn Station", "Rally's", "Hardee's", "Hooters", "King Buffet", "Papa John's", "Chic-fil-A", "Cook Out", "A&W", "Arby's", "Wendy's", "Little Ceasers", "Waffle House", "O'Charlys", "White Castle", "Applebee's", "Red Lobster", "Giovanni's", "Cracker Barrel", "Gillum's", "Sonic", "Smitty's", "Pizza Hut", "Masala", "IHop", "Frish's Big Boy", "Logan's Roadhouse", "Sonny's BBQ", "Olive Garden", "El Mejor", "Casa Cafe", "Hardee's", "Culvers", "Koto Japanese Bistro", "Hanger's Steakhouse", "Steak'n Shake", "Outback Steakhouse", "Buffalo Wild Wings", "Golden Corral", "Snappy", "El Mejor", "Sidelines", "Nuevo", "Lee's Famous Recipe Chicken", "Kfc", "Dairy Queen", "Better Burgers and More", "Firehouse Sub's", "Outback Steakhouse", "McAlister's Deli", "Khins Sushi", "Panera Bread", "Burger King", "Raising Cane's", "Culvers", "Proud Mary", "Zaxbys"]
            return r
        case 15:
            r = ["Taco Bell", "McDonalds", "Jackson's", "Apollo Pizza", "Cafe Meeples", "Madison Garden Bar and Grill", "Thai Smile", "Casa Fiesta", "Subway", "Babylon Gyro's", "Purdy's Coffee Co.", "Fong's", "Jimmy John's", "Qdoba", "Penn Station", "Rally's", "Hardee's", "Hooters", "King Buffet", "Papa John's", "Chic-fil-A", "Cook Out", "A&W", "Arby's", "Wendy's", "Little Ceasers", "Waffle House", "O'Charlys", "White Castle", "Applebee's", "Red Lobster", "Giovanni's", "Cracker Barrel", "Gillum's", "Sonic", "Smitty's", "Pizza Hut", "Masala", "IHop", "Frish's Big Boy", "Logan's Roadhouse", "Sonny's BBQ", "Olive Garden", "El Mejor", "Casa Cafe", "Hardee's", "Culvers", "Koto Japanese Bistro", "Hanger's Steakhouse", "Steak'n Shake", "Outback Steakhouse", "Buffalo Wild Wings", "Golden Corral", "Snappy", "El Mejor", "Sidelines", "Nuevo", "Lee's Famous Recipe Chicken", "Kfc", "Dairy Queen", "Better Burgers and More", "Firehouse Sub's", "Outback Steakhouse", "McAlister's Deli", "Khins Sushi", "Panera Bread", "Burger King", "Raising Cane's", "Culvers", "Proud Mary", "Zaxbys"]
            return r
        case 20:
            r = ["Taco Bell", "McDonalds", "Jackson's", "Apollo Pizza", "Cafe Meeples", "Madison Garden Bar and Grill", "Thai Smile", "Casa Fiesta", "Subway", "Babylon Gyro's", "Purdy's Coffee Co.", "Fong's", "Jimmy John's", "Qdoba", "Penn Station", "Rally's", "Hardee's", "Hooters", "King Buffet", "Papa John's", "Chic-fil-A", "Cook Out", "A&W", "Arby's", "Wendy's", "Little Ceasers", "Waffle House", "O'Charlys", "White Castle", "Applebee's", "Red Lobster", "Giovanni's", "Cracker Barrel", "Gillum's", "Sonic", "Smitty's", "Pizza Hut", "Masala", "IHop", "Frish's Big Boy", "Logan's Roadhouse", "Sonny's BBQ", "Olive Garden", "El Mejor", "Casa Cafe", "Hardee's", "Culvers", "Koto Japanese Bistro", "Hanger's Steakhouse", "Steak'n Shake", "Outback Steakhouse", "Buffalo Wild Wings", "Golden Corral", "Snappy", "El Mejor", "Sidelines", "Nuevo", "Lee's Famous Recipe Chicken", "Kfc", "Dairy Queen", "Better Burgers and More", "Firehouse Sub's", "Outback Steakhouse", "McAlister's Deli", "Khins Sushi", "Panera Bread", "Burger King", "Raising Cane's", "Culvers", "Proud Mary", "Zaxbys"]
            return r
        case 25:
            r = ["Taco Bell", "McDonalds", "Jackson's", "Apollo Pizza", "Cafe Meeples", "Madison Garden Bar and Grill", "Thai Smile", "Casa Fiesta", "Subway", "Babylon Gyro's", "Purdy's Coffee Co.", "Fong's", "Jimmy John's", "Qdoba", "Penn Station", "Rally's", "Hardee's", "Hooters", "King Buffet", "Papa John's", "Chic-fil-A", "Cook Out", "A&W", "Arby's", "Wendy's", "Little Ceasers", "Waffle House", "O'Charlys", "White Castle", "Applebee's", "Red Lobster", "Giovanni's", "Cracker Barrel", "Gillum's", "Sonic", "Smitty's", "Pizza Hut", "Masala", "IHop", "Frish's Big Boy", "Logan's Roadhouse", "Sonny's BBQ", "Olive Garden", "El Mejor", "Casa Cafe", "Hardee's", "Culvers", "Koto Japanese Bistro", "Hanger's Steakhouse", "Steak'n Shake", "Outback Steakhouse", "Buffalo Wild Wings", "Golden Corral", "Snappy", "El Mejor", "Sidelines", "Nuevo", "Lee's Famous Recipe Chicken", "Kfc", "Dairy Queen", "Better Burgers and More", "Firehouse Sub's", "Outback Steakhouse", "McAlister's Deli", "Khins Sushi", "Panera Bread", "Burger King", "Raising Cane's", "Culvers", "Proud Mary", "Zaxbys", "Newks Eatery", "Saul Good", "Chipotle", "Carrabbas", "Old Chicago Pizza", "TGI Fridays", "Shakespere and Co", "Malones Hamburg", "Harry's American Bar and Grill", "Aqua Sushi Bar"]
            return r
        case 30:
            r = ["Taco Bell", "McDonalds", "Jackson's", "Apollo Pizza", "Cafe Meeples", "Madison Garden Bar and Grill", "Thai Smile", "Casa Fiesta", "Subway", "Babylon Gyro's", "Purdy's Coffee Co.", "Fong's", "Jimmy John's", "Qdoba", "Penn Station", "Rally's", "Hardee's", "Hooters", "King Buffet", "Papa John's", "Chic-fil-A", "Cook Out", "A&W", "Arby's", "Wendy's", "Little Ceasers", "Waffle House", "O'Charlys", "White Castle", "Applebee's", "Red Lobster", "Giovanni's", "Cracker Barrel", "Gillum's", "Sonic", "Smitty's", "Pizza Hut", "Masala", "IHop", "Frish's Big Boy", "Logan's Roadhouse", "Sonny's BBQ", "Olive Garden", "El Mejor", "Casa Cafe", "Hardee's", "Culvers", "Koto Japanese Bistro", "Hanger's Steakhouse", "Steak'n Shake", "Outback Steakhouse", "Buffalo Wild Wings", "Golden Corral", "Snappy", "El Mejor", "Sidelines", "Nuevo", "Lee's Famous Recipe Chicken", "Kfc", "Dairy Queen", "Better Burgers and More", "Firehouse Sub's", "Outback Steakhouse", "McAlister's Deli", "Khins Sushi", "Panera Bread", "Burger King", "Raising Cane's", "Culvers", "Proud Mary", "Panda Express", "Noodles and Company", "Denny's", "LongHorn Steakhouse", "Cosi", "Zaxby's", "Gumbo Ya Ya", "Stella's Kentucky Deli", "Carson's", "Newks Eatery", "Saul Good", "Chipotle", "Carrabbas", "Old Chicago Pizza", "TGI Fridays", "Shakespere and Co", "Malones Hamburg", "Harry's American Bar and Grill", "Aqua Sushi Bar"]
            return r
        default:
            r = ["Taco Bell", "McDonalds", "Jackson's", "Apollo Pizza", "Cafe Meeples", "Madison Garden Bar and Grill", "Thai Smile", "Casa Fiesta", "Subway", "Purdy's Coffee Co.", "Fong's", "Jimmy John's", "Qdoba", "Penn Station", "Rally's", "Hardee's", "Hooters", "King Buffet", "Papa John's", "Chic-fil-A", "Cook Out", "A&W", "Arby's", "Wendy's", "Little Ceasers", "Long John Silver's", "Fazolis"]
            return r
        }
    }
    
    func displayAlert(r: String)
    {
        location = r
        let alertController = UIAlertController(title: "Looks like we've got a winner!", message: "you've chose to eat at \(location)", preferredStyle: UIAlertControllerStyle.alert)
        
        let knowAction = UIAlertAction(title: "I know the way!", style: UIAlertActionStyle.default, handler: {(alertAction: UIAlertAction!) in self.dismiss(animated: true, completion: nil)})
        
        let directionAction = UIAlertAction(title: "Take me there", style: UIAlertActionStyle.default, handler: {(alertAction: UIAlertAction!) in self.getDirections()})
        
        alertController.addAction(knowAction)
        alertController.addAction(directionAction)
        
        present(alertController, animated: true, completion: nil)
    }
    func getDirections()
    {
        let addressString = "\(location) Richmond Kentucky 40475"
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
            CNPostalAddressStreetKey: location,
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
        willingToDrive = ((row%7)*5)
        willingToDriveLabel.text = "Willing to drive radius: \(willingToDrive) miles"
        let position = dataLimit/2 + row
        pickerView.selectRow(position, inComponent: 0, animated: false)
    }
}
