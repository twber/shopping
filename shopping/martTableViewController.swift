//
//  martTableViewController.swift
//  shopping
//
//  Created by Bernice TSAI on 2020/8/17.
//

import UIKit

class martTableViewController: UITableViewController {
    var qty1:Int = 1
    var qty2:Int = 1
    var subtotalValue: Int = 808
    var gapValue: Int = 2272
    
    @IBOutlet weak var clearItem1: UIStepper!
    @IBOutlet weak var clearItem2: UIStepper!
    @IBOutlet weak var freeShipGap: UILabel!
    @IBOutlet weak var Subtotal: UILabel!
    
    @IBOutlet weak var p2num: UILabel!
    @IBOutlet weak var p1clonenum: UILabel!
    @IBOutlet weak var p1num: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    }
    
    @IBAction func changeStepper1(_ sender: UIStepper) {
        qty1 = Int(sender.value)
        p1num.text = "數量：\(qty1)"
        p1clonenum.text = p1num.text
        calculateSubtotal()
        
    }
    @IBAction func changeStepper2(_ sender: UIStepper) {
        qty2 = Int(sender.value)
        p2num.text = "數量：\(qty2)"
        calculateSubtotal()
        
    }
    
    @IBAction func clearAll(_ sender: Any) {
        clearItem1.value = 0
        clearItem2.value = 0
        p1num.text = "數量：0"
        p1clonenum.text = "數量：0"
        p2num.text = "數量：0"
        qty1 = 0
        qty2 = 0
        calculateSubtotal()
        Subtotal.text = " \n 小計：$0 "
    }
    
    func calculateSubtotal(){
        let subtotalValue = 509 * qty1 + 219 * qty2
        let gapValue = 3000 - subtotalValue
        if gapValue > 0 {
            freeShipGap.text = "距離免運仍需 $\(gapValue)"
            Subtotal.text = " 含運費$80\n 小計：$\(subtotalValue + 80) "
        }
        else{
            freeShipGap.text = "已達免運門檻"
            Subtotal.text = "\n 小計：$\(subtotalValue)"
        }
    }
    /*func calculateGap(){
        let gapValue = 3000 - subtotalValue
        if gapValue > 0 { freeShipGap.text = "距離免運仍需 $\(gapValue)" }
        else{ freeShipGap.text = "已達免運門檻" }
    }*/
    
    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
