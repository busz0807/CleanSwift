//
//  IPORolloverRequests.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 1/2/21.
//

import Foundation
import Alamofire


enum Funds: URLRequestConvertible {
    case analystReport, iPO, fundsList, getOder, insertOrder, getHistory, deleteOrder

    var  method: HTTPMethod {
        switch self {
        case .analystReport: return .get
        case .iPO: return .post
        case .fundsList: return .get
        case .getOder: return .post
        case .insertOrder: return .post
        case .getHistory: return .post
        case .deleteOrder: return .post
        }
    }
    var path: String {
        switch self {
        case .analystReport: return "https://servicebeta.poems.in.th/FundSmart/api/funds/reports"
        case .iPO: return "https://www.fame.in.th/FAMEMvc/api/DashUnAuthor/IPO"
        case .fundsList: return "http://servicebeta.poems.in.th/fundsmart/api/funds/GetFundList"
        case .getOder: return "https://servicebeta.poems.in.th/FundSmart/api/SimPort/GetOrder"
        //?username=bookling01&portNo=1
        case .insertOrder: return "https://servicebeta.poems.in.th/FundSmart/api/SimPort/InsertOrder"
        //?username=bookling01&portNo=1&portName=0&fcode=001014&ordtp=1&grsam=140000&units=20.20&unprc=10.20&trndt=20100223&status=null&channel=null&realized=null"
        case .getHistory: return "https://servicebeta.poems.in.th/FundSmart/api/SimPort/GetHistory"
        case .deleteOrder: return "https://servicebeta.poems.in.th/FundSmart/api/SimPort/DeleteOrder"
        }
    }
    
    func asURLRequest() ->  URLRequest {
        let urlString = "\(path)"
        let url = URL(string: urlString)!
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        return request
    }
}



