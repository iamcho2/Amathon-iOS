//
//  DetailViewController.swift
//  Amathon
//
//  Created by 장한솔 on 2018. 7. 21..
//  Copyright © 2018년 장한솔. All rights reserved.
//

import UIKit
import Kingfisher

class DetailViewController: UIViewController {

    @IBOutlet weak var marketImage: UIImageView!
    @IBOutlet weak var marketName: UILabel!
    @IBOutlet weak var marketAddress: UILabel!
    @IBOutlet weak var marketCategory: UILabel!
    @IBOutlet weak var marketRating: UILabel!
    @IBOutlet weak var marketPhone: UILabel!
    @IBOutlet weak var marketDes: UILabel!
    
    var m_image = ""
    var m_name = ""
    var m_address = ""
    var m_category = ""
    var m_rating = ""
    var m_phone = ""
    var m_description = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        marketImage.kf.setImage(with: URL(string: imgArr[size-indexPath.row-1]),placeholder: UIImage())
    }


    @IBAction func goStar(_ sender: Any) {
    }
    

}
