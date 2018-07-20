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
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var selectionView: UIView!
    var isOpen = true
    
    @IBOutlet var pinColors: [UIImageView]!
    @IBOutlet var pinLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
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
