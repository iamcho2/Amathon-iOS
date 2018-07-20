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
    @IBOutlet weak var selectionView: UIView!
    var isOpen = true
    
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
            print("hello!")
            
                isOpen = true
        }else{
            selectionView.heightAnchor.constraint(equalToConstant: 53).isActive = false
            selectionView.heightAnchor.constraint(equalToConstant: 0).isActive = true
            
                isOpen = false
        }
    }
    
    
}
