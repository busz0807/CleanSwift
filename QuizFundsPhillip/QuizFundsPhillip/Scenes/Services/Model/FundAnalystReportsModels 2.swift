//
//  FundAnalystReportsModels.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 3/2/21.
//

import Foundation
struct FundAnalystReportsModels:  Codable {
    
    var AnalystReport: analystReportModel?
    var AnalystTalk : AnalystTalksModels?
    }

struct analystReportModel: Codable {
    var IPO: [IPOsModel]?
    var Weekly: [WeeklysModel]?
    var Monthly: [MonthlysModel]?

}
struct IPOsModel: Codable {
   
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?
}

struct WeeklysModel: Codable {
   
    var HeadlineEn: String?
    var HeadlineTh: String?
    var lastUpdate: String?
    var name: String?
    var fileUrl : String?
}


struct MonthlysModel: Codable {
   
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
