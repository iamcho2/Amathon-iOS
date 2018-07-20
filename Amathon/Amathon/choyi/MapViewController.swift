//
//  MapViewController.swift
//  Amathon
//
//  Created by admin on 2018. 7. 20..
//  Copyright © 2018년 장한솔. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class MapViewController: UIViewController {
    var marketArr = [Market]()
    
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var selectionView: UIView!
    var isOpen = true
    
    @IBOutlet var pinColors: [UIImageView]!
    @IBOutlet var pinLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getMarket(){
        MarketService.market(lat: "37.4923661", lon: "127.0205431", orderby: "일식") { (arr) in
            self.marketArr = arr
        }
    }
    
    func getAdress(arr : [Market]){
         
    }

    @IBAction func arrowClicked(_ sender: Any) {
        if isOpen == false {
            heightConstraint.constant = 53

                isOpen = true
        }else{
            heightConstraint.constant = 0

                isOpen = false
        }
        
        
        pinColors.forEach { (image) in
            image.isHidden = !image.isHidden
        }
        pinLabels.forEach { (label) in
            label.isHidden = !label.isHidden
        }
    }
    
    
}
