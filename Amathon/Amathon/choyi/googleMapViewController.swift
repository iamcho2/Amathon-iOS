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

    override func viewDidLoad() {
        super.viewDidLoad()

        let camera = GMSCameraPosition.camera(withLatitude: 37.55, longitude: 126.97, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.settings.myLocationButton = true
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: 37.55, longitude: 126.97)
        marker1.title = "Seoul"
        marker1.snippet = "Korea"
        marker1.map = mapView
        
        // Create marker2 for testing
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 37.50, longitude: 127.03)
        marker2.title = "gangnam"
        marker2.snippet = "finance center"
        marker2.map = mapView
        
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

}
