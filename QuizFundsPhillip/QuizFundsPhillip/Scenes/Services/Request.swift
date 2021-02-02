//
//  IPORolloverRequests.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 1/2/21.
//

import Foundation
import Alamofire


enum Funds: URLRequestConvertible {
    case get, post
    
    var ipoURL: URL {
        
        return URL(string: "https://servicebeta.poems.in.th/FundSmart/api/funds/reports")!
    }
    
    var  method: HTTPMethod {
        switch self {
        case .get: return .get
        case .post: return .post
            
        }
    }
    var path: String {
        switch self {
        case .get: return ""
        case .post: return ""
            
        }
    }
//    public var parameters: String? {
//           switch self {
//           case .get:
//               return nil
//           case .post:
//               return nil
//           }
//       }
    func asURLRequest() ->  URLRequest {
        let url = ipoURL.appendingPathComponent(path)
        var request = URLRequest(url: url)
        request.method = method
        return request
    }
}
//    struct TestModel: Codable {
////        var IPO : 
//    }



