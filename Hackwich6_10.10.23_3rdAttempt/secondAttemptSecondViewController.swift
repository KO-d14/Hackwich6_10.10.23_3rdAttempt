//
//  secondAttemptSecondViewController.swift
//  Hackwich6_10.10.23_3rdAttempt
//
//  Created by Aina Kodaira on 10/29/23.
//

import UIKit

//PROBLEM SET #1: PART5-#1
class secondAttemptSecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//PROBLEM SET #1: PART8-#2
        @IBOutlet weak var secondTrySecondTableView: UITableView!
//PROBLEM SET #1: PART6-#1
        var placesToTravelArray = ["Korea", "Europe", "United States"]

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
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let text = placesToTravelArray[indexPath.row]
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
