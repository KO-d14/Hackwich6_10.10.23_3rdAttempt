//
//  ViewController.swift
//  Hackwich6_10.10.23_3rdAttempt
//
//  Created by Aina Kodaira on 10/22/23.
//
/*
Hackwich 6- THE MIGHTY TABLE VIEW
 ---------------------------------
 (in class portion):
Part 1: Project Set Up (5 point)
Part 2: UI explanation

 Part 3: Let’s Set up Main.Storyboard
1. adding table View
2. adding table view cell
3. opening doc outline
4. (brief verification)
5. connecting delegates and dataSource

Part 4: dataSource & delegate explanation
Part 5 #1-4: code below
Part 6: code below
Part 7 #1-3: code below
Part 8: Set up Prototype Cell:
 1. change name from 'tableview cell' to 'cell' in the doc outline
***NOTE: ^ I forgot to add this when doing this 3rd HW6
 2. Code below
Last step: build & run

*/

/*
 Problem Set (PS) #2: Set Subtitle Text in TableView Cell
 --------------------------------------------------------
 2. (code below)
 3. Select the prototype cell (“cell”) in the document outline and in the Attributes Inspector, set up your cell to display a subtitle. Set the style to, “Subtitle”. (1 point)
 4. (code below)
 
 */
import UIKit

//HW6 PART 1-8: IN-CLASS ASSIGNMENT
//Part 5: Let’s Set Up ViewController.Swift file with delegates and delegate methods
    //5-#1. Open your ViewController.swift file and add these protocols, UITableViewDataSource & UITableViewDelegate, on the “class” line
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
//PART 8- #2. Create an outlet for your table view and name it, “tableView”.
      /* ***NOTE: ^ I missed this step when doing this 3rd HW6
            Also likely, the cause of the issue bc it was resolved after this!! :)
       */
        @IBOutlet weak var tableView: UITableView!
        
//Part 6: Create an Array using an Array Literal
    //6-#1. Declare an array and name it“myFriendsArray” and add three names to your array.
    var myClassmatesArray = ["Sayuri", "Kapena", "Brendan"]
    
//PS#2-#2 Create a third array and name it, “myfriendsHomeArray” that contains the names of the city that your friends live in. (1 point)
    var myClassmatesHomeArray = ["Aiea", "Kaneohe", "Honolulu"]
    
    //5-#2. TableView Methods to implement:
    //There are two required methods when using the UITableViewDataSource Protocol:
    //5-#3 skip
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //5-#4. In the code block for the “numberOfRowsInSection” function, insert the line: return 1
        //return 1
//Part 7: Set up for Datasource methods
    //7-#1. Now, let’s set the number of rows in our tableview to the number of items in the array.
        return myClassmatesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //7-#2. Within the code block of the cellForRowAt indexPath function, please add the lines of code in blue text.
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = myClassmatesArray[indexPath.row]
        
//PS#2-#4. Add the highlighted line of code in the tableview function: cellForRowAtIndex to display your second array in the subtitle of the table view cell.
        cell.detailTextLabel?.text = myClassmatesHomeArray[indexPath.row]
        
    //7-#2.
        cell.textLabel?.text = text
        return cell
        
    } //closing bracket for func tableView
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    } //closing bracket for func viewDidLoad
    
//-------------------------------------
// comment test
    // running with issues 
/*
 - "officially" completing HW 6, In- class portion Parts 1-8; app builds normally
 NOTE
 - resolved the issue to errors mentioned prior <-- possibly due to the missed step of creating an IBOutlet for the tableView
 - when attempting committing, I ran into an error e.g local repo out of date when attempting to commit and push.
  1st ATTEMPT - Tried pulling from origin 1 (without clicking the checkbox regarding rebase); attempting to see if it would work - THAT'S WHY THE CODE THAT I FINISHED IS NOT SHOWN <-- the only actual changes I made is writing the comments for guideline ;
 2nd ATTEMPT - 1st ATTEMPT DIDNT WORK- tried again but with checking the checkbox - FAILED;
 3rd ATTEMPT - tried pulling from origin without checking the checkbox- FAILED
 4 ATTEMPT- same as 3rd attempt but CHECKING THE BOX FAILED
 */
 }

