//
//  MapVC
//  Pixel City
//
//  Created by ClementM on 08/11/2017.
//  Copyright © 2017 ClementM. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    // Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }

    @IBAction func centerMapBtnPressed(_ sender: Any) {
    }
    
}

extension MapVC: MKMapViewDelegate {
    
}
