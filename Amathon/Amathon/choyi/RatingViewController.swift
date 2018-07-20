//
//  RatingViewController.swift
//  Amathon
//
//  Created by admin on 2018. 7. 21..
//  Copyright © 2018년 장한솔. All rights reserved.
//

import UIKit
import Cosmos

class RatingViewController: UIViewController {
    @IBOutlet weak var interior: CosmosView!
    @IBOutlet weak var taste: CosmosView!
    @IBOutlet weak var price: CosmosView!
    
    var mySerial : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didConfirmClicked(_ sender: Any) {
        
        print(interior.rating)
        
        
        MarketService.stardto(interior: interior.rating, price: price.rating, taste: taste.rating, serialNum: mySerial) { (msg) in
            if msg == "success"{
                let tab = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mainTab")
                self.present(tab, animated: true, completion: nil)
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
