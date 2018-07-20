//
//  CategoryListViewController.swift
//  Amathon
//
//  Created by 장한솔 on 2018. 7. 21..
//  Copyright © 2018년 장한솔. All rights reserved.
//

import UIKit

class CategoryListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var category = ""
    var marketArr = [Market]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(category)
        
        
        MarketService.getcategorylist(cat: category) { (arr) in
            self.marketArr = arr
            
            self.tableView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return marketArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryListTableViewCell") as! CategoryListTableViewCell
        
        cell.cellName.text = marketArr[indexPath.row].name
        cell.cellRating.text = "\(marketArr[indexPath.row].rating.totalRating)"
        
        return cell
    }
    
    


    

}
