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
    var m_rating = 0.0
    var m_phone = ""
    var m_description = ""
    var m_serial : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //marketImage.kf.setImage(with: URL(string: m_image),placeholder: UIImage())
        marketName.text = m_name
        marketAddress.text = m_address
        marketCategory.text = m_category
        marketRating.text = "\(m_rating)"
        marketPhone.text = m_phone
        marketDes.text = m_description
    }


    @IBAction func goStar(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RatingViewController") as! RatingViewController
        
        vc.mySerial = m_serial
        self.present(vc, animated: true, completion: nil)
        
    }
    
    @IBAction func dismissAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
