//
//  googleMapViewController.swift
//  Amathon
//
//  Created by admin on 2018. 7. 21..
//  Copyright © 2018년 장한솔. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class googleMapViewController: UIViewController {
    
    var marketArr = [Market]()
    var mapView: GMSMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let camera = GMSCameraPosition.camera(withLatitude: 37.4923661, longitude: 127.0205431, zoom: 15.0)
        mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.settings.myLocationButton = true
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: 37.4923661, longitude: 127.0205431)
        marker1.title = "Seoul"
        marker1.snippet = "Korea"
        marker1.map = mapView
        
        getMarket()
        
        // Create marker2 for testing
//        let marker2 = GMSMarker()
//        marker2.position = CLLocationCoordinate2D(latitude: 37.50, longitude: 127.03)
//        marker2.title = "gangnam"
//        marker2.snippet = "finance center"
//        marker2.map = mapView
        
        // Do any additional setup after loading the view.
    }
    
    func getMarket(){
        MarketService.market(lat: "37.4923661", lon: "127.0205431") { (arr) in
            self.marketArr = arr
            
            self.setMarker(arr: self.marketArr)
        }
    }
    
    func setMarker(arr : [Market]){
        for i in 0..<arr.count{
            
            let latitude = (arr[i].lat as NSString).doubleValue
            let longitude = (arr[i].lon as NSString).doubleValue
            
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
            marker.title = arr[i].name
            marker.snippet = arr[i].address
            marker.map = self.mapView
        }
    }


}
