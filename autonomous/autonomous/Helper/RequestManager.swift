//
//  RequestManager.swift
//  autonomous
//
//  Created by ThuTrangT5 on 23/01/2021.
//

import Alamofire
import SwiftyJSON

class RequestManager: NSObject {

    static let shared = RequestManager()
    private let cityKey = "64b4adc491c8476e93772284769a4005"
    private let weatherKey = "2ed34880c948e7e9434e5f951f96e18b"
    
    
    
    private override init() {
        super.init()
    }
    
    func getLatLong(cityName: String, callback: ((Double?, Double?, Error?)  -> Void)?) {
        // https://api.opencagedata.com/geocode/v1/json?pretty=1&no_annotations=1&no_dedupe=1&no_record=1&litmit=1&key=64b4adc491c8476e93772284769a4005&q=saigon
        let url = "https://api.opencagedata.com/geocode/v1/json"
        let params: Parameters = [
            "pretty": 1,
            "no_annotations": 1,
            "no_dedupe": 1,
            "no_record": 1,
            "litmit": 1,
            "key": self.cityKey,
            "q": cityName
        ]
        
        AF.request(url, method: .get, parameters: params)
            .responseJSON { (response) in
                if let error = response.error {
                    callback?(nil, nil, error)
                } else if let value = response.value {
                    
                }
            }
    }
    
    func getWeather(lat: Double, long: Double, page: Int, callback: (()->Void)?) {
        // https://api.openweathermap.org/data/2.5/onecall?lat=10.7715512&lon=06.6983801&exclude=daily&appid=2ed34880c948e7e9434e5f951f96e18b
    }
}
