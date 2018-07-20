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
    
    static func market(lat: String, lon: String, orderby: String, completion: @escaping ([Market])->Void){
        
        let URL = url("/restaurants")
        
        let body: [String: Any] = [
            "lat" : lat,
            "lon" : lon,
            "orderby" : "distance",
            "searchKeyword" : orderby
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
    
    
    
    
    static func stardto(interior: Double, price: Double, taste: Double, serialNum: Int, completion: @escaping (_ message: String)->Void){
        
        let URL = url("/restaurants")
        
        let body: [String: Any] = [
            "interiorRating" : interior,
            "priceRating" : price,
            "serialNum" : serialNum,
            "tasteRating" : taste
        ]
        
        
        Alamofire.request(URL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: nil).responseData() { res in
            switch res.result{
            case .success:
                
                print("0000000000000000000000")
                
                if let value = res.result.value{
                    if let message = JSON(value)["message"].string{
                        if message == "SUCCESS"{
                            
                            print("1111111111111111111111111111")

                            
                            completion("success")
                            
                            
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
