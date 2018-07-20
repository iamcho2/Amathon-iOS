//
//  RecommendViewController.swift
//  Amathon
//
//  Created by 장한솔 on 2018. 7. 20..
//  Copyright © 2018년 장한솔. All rights reserved.
//

import UIKit

class RecommendViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imgArr = [#imageLiteral(resourceName: "01"),#imageLiteral(resourceName: "02"),#imageLiteral(resourceName: "03"),#imageLiteral(resourceName: "01"),#imageLiteral(resourceName: "02")]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.setContentOffset(.zero, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecommendTableViewCell") as! RecommendTableViewCell
        
        cell.cellImage.image = imgArr[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 462
    }


}
