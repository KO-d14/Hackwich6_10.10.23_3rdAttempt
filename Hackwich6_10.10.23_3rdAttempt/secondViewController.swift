//
//  secondViewController.swift
//  Hackwich6_10.10.23_3rdAttempt
//
//  Created by Aina Kodaira on 10/29/23.
//

import UIKit

//PROBLEM SET #1: PART5-#1
class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

//PROBLEM SET #1: PART8-#2
    @IBOutlet weak var secondTableViewV2: UITableView!
    
//PROBLEM SET #1: PART6-#1
    var placesToTravelArray = ["Korea", "Europe", "United States"]
    
//PS#2-#2 Create a third array and name it, “myfriendsHomeArray” that contains the names of the city that your friends live in. (1 point)
    //(same as in TAB 1)
    var citiesToVisitArray = ["Seoul", "Italiy", "New York"]
    
//PROBLEM SET #1: PART5-#2
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//PROBLEM SET #1: PART5-#4
        //return 1;
        
//PROBLEM SET #1: PART7-#1
        return placesToTravelArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
//PROBLEM SET #1: PART7-#2
        /*
         NOTE:
         Found the cause of issue- HAVE to name the tableview in doc outline as "cell" and NOT e.g "secondCell"
         */
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = placesToTravelArray[indexPath.row]
        
        //PS#2-#4. Add the highlighted line of code in the tableview function: cellForRowAtIndex to display your second array in the subtitle of the table view cell.
        cell.detailTextLabel?.text = citiesToVisitArray[indexPath.row]
        
     //Part7-#2
        cell.textLabel?.text = text
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

  
}
