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
            "lon" : lon
        ]
        
        Alamofire.request(URL, method: .get, parameters: body, encoding: JSONEncoding.default, headers: nil).responseData() { res in
            switch res.result{
            case .success:
                
                if let value = res.result.value{
                    if let message = JSON(value)["message"].string{
                        if message == "success"{ // 주문내역 상세보기 성공
                            
                            
                            let decoder = JSONDecoder()
                            do{
                                let marketdata = try decoder.decode(MarketData.self, from: value)
                                
                                completion(marketdata.result)
                                
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
