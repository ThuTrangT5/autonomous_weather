//
//  City.swift
//  autonomous
//
//  Created by ThuTrangT5 on 23/01/2021.
//

import SwiftyJSON

struct City {
    var name: String?
    var lat: Double = 0
    var long: Double = 0
    
    
    init?(json: JSON) {
        if json == JSON.null {
            return nil
        }
        
        name = json["formatted"].string
        lat = json["geometry"]["lat"].doubleValue
        long = json["geometry"]["lng"].doubleValue
    }
}
