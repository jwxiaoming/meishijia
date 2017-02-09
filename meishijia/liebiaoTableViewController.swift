//
//  liebiaoTableViewController.swift
//  meishijia
//
//  Created by jack on 17/2/8.
//  Copyright © 2017年 jack. All rights reserved.
//

import UIKit

class liebiaoTableViewController: UITableViewController {
    var areas = [
        area(areas: "咖啡胡同", tupian: "cafedeadend.jpg", didian: "香港", leixing: "咖啡 & 茶店", isVisited: false),
        area(areas: "霍米", tupian: "homei.jpg", didian: "香港", leixing: "咖啡", isVisited: false),
        area(areas: "茶.家", tupian: "teakha.jpg", didian: "香港", leixing: "茶屋", isVisited: false),
        area(areas: "洛伊斯咖啡", tupian: "cafeloisl.jpg", didian: "香港", leixing: "奥地利式 & 休闲饮料", isVisited: false),
        area(areas: "贝蒂生蚝", tupian: "petiteoyster.jpg", didian: "香港", leixing: "法式", isVisited: false),
        area(areas: "福奇餐馆", tupian: "forkeerestaurant.jpg", didian: "香港", leixing: "面包房", isVisited: false),
        area(areas: "阿波画室", tupian: "posatelier.jpg", didian: "香港", leixing: "面包房", isVisited: false),
        area(areas: "伯克街面包坊", tupian: "bourkestreetbakery.jpg", didian: "悉尼", leixing: "巧克力", isVisited: false),
        area(areas: "黑氏巧克力", tupian: "haighschocolate.jpg", didian: "悉尼", leixing: "咖啡", isVisited: false),
        area(areas: "惠灵顿雪梨", tupian: "palominoespresso.jpg", didian: "悉尼", leixing: "美式 & 海鲜", isVisited: false),
        area(areas: "北州", tupian: "upstate.jpg", didian: "纽约", leixing: "美式", isVisited: false),
        area(areas: "布鲁克林塔菲", tupian: "traif.jpg", didian: "纽约", leixing: "美式", isVisited: false),
        area(areas: "格雷厄姆大街肉", tupian: "grahamavenuemeats.jpg", didian: "纽约", leixing: "早餐 & 早午餐", isVisited: false),
        area(areas: "华夫饼 & 沃夫", tupian: "wafflewolf.jpg", didian: "纽约", leixing: "法式 & 茶", isVisited: false),
        area(areas: "五叶", tupian: "fiveleaves.jpg", didian: "纽约", leixing: "咖啡 & 茶", isVisited: false),
        area(areas: "眼光咖啡", tupian: "cafelore.jpg", didian: "纽约", leixing: "拉丁美式", isVisited: false),
        area(areas: "忏悔", tupian: "confessional.jpg", didian: "纽约", leixing: "西班牙式", isVisited: false),
        area(areas: "巴拉菲娜", tupian: "barrafina.jpg", didian: "伦敦", leixing: "西班牙式", isVisited: false),
        area(areas: "多尼西亚", tupian: "donostia.jpg", didian: "伦敦", leixing: "西班牙式", isVisited: false),
        area(areas: "皇家橡树", tupian: "royaloak.jpg", didian: "伦敦", leixing: "英式", isVisited: false),
        area(areas: "泰咖啡", tupian: "thaicafe.jpg", didian: "伦敦", leixing: "泰式", isVisited: false)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(white: 0.98,alpha: 1)
        tableView.separatorColor = UIColor(white: 0.9, alpha: 1)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
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
        return areas.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DetailCell", forIndexPath: indexPath) as! DetailTableViewCell

        // Configure the cell...
        cell.name.text = areas[indexPath.row].areas
        cell.didian.text = areas[indexPath.row].didian
        cell.leixing.text = areas[indexPath.row].leixing
        cell.tupian.image = UIImage(named: areas[indexPath.row].tupian)
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "quneiye" {
            let dest = segue.destinationViewController as! neiyeTableViewController
            dest.zhuangzhi = areas[tableView.indexPathForSelectedRow!.row]
        }
    }
    

}
