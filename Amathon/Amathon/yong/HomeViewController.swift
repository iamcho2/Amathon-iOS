//
//  HomeViewController.swift
//  Amathon
//
//  Created by 장한솔 on 2018. 7. 20..
//  Copyright © 2018년 장한솔. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var goButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        goButton.layer.cornerRadius = goButton.frame.height/2
    }



}
