//
//  FundAnalystReportsModels.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 3/2/21.
//

import Foundation
struct FundAnalystReportsModels:  Codable {
    
    var AnalystTalk: AnalystTalksModels
    var AnalystReport : analystReportModel
    }

struct analystReportModel: Codable {
    var IPO: IPO
    var Weekly: Weekly
    var Monthly: Monthly

}
struct IPO: Codable {
   
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?
}

struct Weekly: Codable {
   
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?
}


struct Monthly: Codable {
   
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?
}


struct AnalystTalksModels: Codable {
   
    var Screen: String?
    var Title:String?
    var en_title: String?
    var en_url: String?
    var lastUpdate: String?
    var url: String?

}
