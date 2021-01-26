//
//  Weather.swift
//  autonomous
//
//  Created by ThuTrangT5 on 23/01/2021.
//

import SwiftyJSON

struct Weather {

    var weatherDescription: String?
    var icon: String?
    var temp: Double = 0
    var pressure: Int = 0
    var humidity: Int = 0
    var clouds: Int = 0
    var wind_speed: Double = 0
}
