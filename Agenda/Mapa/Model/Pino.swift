//
//  Pino.swift
//  Agenda
//
//  Created by Fabiana Petrovick on 02/01/21.
//  Copyright © 2021 Fabiana Petrovick. All rights reserved.
//

import UIKit
import MapKit

class Pino: NSObject, MKAnnotation {
    
    var title: String?
    var icon: UIImage?
    var color: UIColor?
    var coordinate: CLLocationCoordinate2D
    
    init(coordenada:CLLocationCoordinate2D) {
        self.coordinate = coordenada
    }
}
