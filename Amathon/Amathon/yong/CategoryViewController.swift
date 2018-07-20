//
//  CategoryViewController.swift
//  Amathon
//
//  Created by 장한솔 on 2018. 7. 21..
//  Copyright © 2018년 장한솔. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func click(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CategoryListViewController") as! CategoryListViewController
        
        switch sender {
        case b1:
            vc.category = "한식"
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case b2:
            vc.category = "패스트푸드"
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case b3:
            vc.category = "일식"
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case b4:
            vc.category = "치킨"
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case b5:
            vc.category = "피자"
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case b6:
            vc.category = "중식"
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case b7:
            vc.category = "디저트"
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case b8:
            vc.category = "야식"
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case b9:
            vc.category = "보쌈"
            self.navigationController?.pushViewController(vc, animated: true)
            
            break
        case b10:
            vc.category = "족발"
            self.navigationController?.pushViewController(vc, animated: true)
            break
            
        default:
            break
        }
    }
    
}
