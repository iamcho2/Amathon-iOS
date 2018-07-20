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

class MapViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    var marketArr = [Market]()
    let data = ["한식", "패스트푸드", "일식", "치킨", "피자", "중식", "디저트", "야식", "보쌈", "족발"]
    var picker = UIPickerView()
    
    @IBOutlet weak var cateTextField: UITextField!
    
    private lazy var withInfoVC1: googleMapViewController = {
        var viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "googleMapViewController") as! googleMapViewController
        self.addChildViewController(viewController)
        return viewController
    }()
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var selectionView: UIView!
    var isOpen = true
    
    @IBOutlet var pinColors: [UIImageView]!
    @IBOutlet var pinLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        picker.delegate = self
        picker.dataSource = self
        cateTextField.inputView = picker
        let bar = UIToolbar()
        bar.sizeToFit()
        cateTextField.inputAccessoryView = bar
        
        let doneButton = UIBarButtonItem(title: "확인", style: .done, target: self, action: #selector(pickerViewSelected))
        bar.setItems([doneButton], animated: true)

        
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    
    // returns the # of rows in each component..
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return data.count
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        // 특정 row를 골랐을 때
        //cateTextField.text = data[row]
        //withInfoVC1.getMarket(orderby: data[row])
        
    }
    
    @objc func pickerViewSelected(){ // 파트 확인 버튼 눌렀을 때
        let row = picker.selectedRow(inComponent: 0)
        cateTextField.text = data[row]
        withInfoVC1.getMarket(orderby: data[row])
        view.endEditing(true)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
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
