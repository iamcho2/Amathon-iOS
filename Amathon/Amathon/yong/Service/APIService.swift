//
//  APIService.swift
//  Amathon
//
//  Created by 장한솔 on 2018. 7. 21..
//  Copyright © 2018년 장한솔. All rights reserved.
//

import Foundation

protocol APIService {
    
}

extension APIService {
    static func url(_ path: String) -> String {
        return "http://13.250.111.77:8080/api" + path
    }
    
    static func gsno(_ value: String?) -> String { //String 옵셔널 벗기기
        return value ?? ""
    }
    
    static func gino(_ value: Int?) -> Int { //Int 옵셔널 벗기기
        return value ?? 0
    }
    
}
