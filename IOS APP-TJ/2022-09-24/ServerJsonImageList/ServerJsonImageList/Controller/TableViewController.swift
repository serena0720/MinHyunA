//
//  TableViewController.swift
//  ServerJsonImageList
//
//  Created by Kenny Hahn on 2022/06/01.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet var listTableView: UITableView!
    
    var feedItem: [DBModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let queryModel = QueryModel()
        queryModel.delegate = self
        queryModel.downloadItems()

        // Design에는 size inspector를 이용해 크기를 정한다.
        listTableView.rowHeight = 124 // Cell높이

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return feedItem.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCell

        // Configure the cell...
        cell.jsonTitle?.text = (feedItem[indexPath.row].title)
        
        // image 처리
//        let url = URL(string: feedItem[indexPath.row].imageName)
//        let data = try? Data(contentsOf: url!)
//
//        cell.imageView?.image = UIImage(data: data!)
        
        
        let url = URL(string: feedItem[indexPath.row].imageName)
        let defaultSession = Foundation.URLSession(configuration: .default)

        let task = defaultSession.dataTask(with: url!){(data, response, error) in
            if error != nil{
                print("Failed to download data")
            }else{
                print("Data is downloaded")
                DispatchQueue.main.async {
                    cell.imageView?.image = UIImage(data: data!)
                }
            }

        }
        task.resume()

        return cell
    }
    

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

} // TableViewController

extension TableViewController: QueryModelProtocol{
    func itemDownloaded(items: [DBModel]) {
        feedItem = items
        self.listTableView.reloadData()
    }
}

