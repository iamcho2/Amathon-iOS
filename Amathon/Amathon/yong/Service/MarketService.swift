//
//  MarketService.swift
//  Amathon
//
//  Created by 장한솔 on 2018. 7. 21..
//  Copyright © 2018년 장한솔. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct MarketService: APIService{
    
    static func market(lat: String, lon: String, completion: @escaping ([Market])->Void){
        
        let URL = url("/restaurants")
        
        let body: [String: Any] = [
            "lat" : lat,
            "lon" : lon,
            "orderby" : "distance",
            "searchKeyword" : "일식"
        ]
        
        Alamofire.request(URL, method: .get, parameters: body, encoding: URLEncoding.queryString, headers: nil).responseData() { res in
            switch res.result{
            case .success:
                
                print("00000000000000000000000000000000")
                
                if let value = res.result.value{
                    if let message = JSON(value)["message"].string{
                        if message == "SUCCESS"{
                            print("1111111111111111111111111111111111")
                            
                            
                            print(JSON(value)["restaurants"][0])
                            
                            let decoder = JSONDecoder()
                            do{
                                let marketdata = try decoder.decode(MarketData.self, from: value)
                                
                                completion(marketdata.restaurants)
                                
                            } catch {
                                print("catch.....")
                            }
                            
                            
                        }else{
                            
                        }
                    }
                }
                
                break
            case .failure(let err):
                print(err.localizedDescription)
                break
            }
        }
        
    }
}
