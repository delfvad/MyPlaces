//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Vadim Zahariev on 6/13/19.
//  Copyright © 2019 Vadim Zahariev. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restarauntNames = [ "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
                            "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
                            "Speak Easy", "Morris Pub", "Вкусные истории",
                            "Классик", "Love&Life", "Шок", "Бочка" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  restarauntNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
       
        cell.nameLabel?.text = restarauntNames[indexPath.row]
        cell.imageOfPlace?.image = UIImage(named: restarauntNames[indexPath.row])
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true

        return cell
    }
    
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
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
