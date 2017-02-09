//
//  neiyeTableViewController.swift
//  meishijia
//
//  Created by jack on 17/2/8.
//  Copyright © 2017年 jack. All rights reserved.
//

import UIKit

class neiyeTableViewController: UITableViewController {
    
    var zhuangzhi: area!
    
    @IBOutlet weak var datu: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        datu.image = UIImage(named: zhuangzhi.tupian)
        self.title = zhuangzhi.areas
        tableView.backgroundColor = UIColor(white: 0.98,alpha: 1)
        tableView.separatorColor = UIColor(white: 0.9, alpha: 1)
        tableView.tableFooterView = UIView(frame: CGRect.zero)
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source



    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("neiyeCell", forIndexPath: indexPath) as! neiyeTableViewCell
        cell.backgroundColor = UIColor.clearColor()
        // Configure the cell...
        switch indexPath.row {
        case 0:
            cell.biaoqian.text = "餐馆名称:"
            cell.zhi.text = zhuangzhi.areas
        case 1:
            cell.biaoqian.text = "餐馆类型:"
            cell.zhi.text = zhuangzhi.leixing
        case 2:
            cell.biaoqian.text = "餐馆地点:"
            cell.zhi.text = zhuangzhi.didian
        default:
            break
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
