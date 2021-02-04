//
//  FundAnalystReportsModels.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 3/2/21.
//

import Foundation
struct FundAnalystReportsModels:  Decodable {
    
    var AnalystTalk: [AnalystTalksModels]
    var AnalystReport : analystReportModel?
    }

struct analystReportModel: Decodable {
    var IPO: [IPO]?
    var Weekly: [Weekly]?
    var Monthly: [Monthly]?

}
struct IPO: Decodable {
   
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?
}

struct Weekly: Decodable {
   
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?
}


struct Monthly: Decodable {
   
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?
}


struct AnalystTalksModels: Decodable {
   
    var Screen: String?
    var Title:String?
    var en_title: String?
    var en_url: String?
    var lastUpdate: String?
    var url: String?

}
