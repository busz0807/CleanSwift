//
//  ViewController.swift
//  IPOandRollover
//
//  Created by BUSSNQ TH on 20/1/21.
//

import UIKit
import Alamofire
import SwiftyJSON
class ViewController: UIViewController {

//    var fetchIPORollover: [IPORolloverDatas] = []
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        getAPI()
    }
   
//    func getAPI() {
//        let URL = " https://servicebeta.poems.in.th/FundSmart/Images/Banner/IPORollover.txt"
//                                 
//        AF.request(URL).validate(contentType: ["application/json"]).responseData { response in
//            switch response.result {
//            case .success:
//                print("Successful")
//            print("Data ", response.value)
//                do {
//                    let dataJSON = JSON(response.value)
//                    let fundAnalystTalk = dataJSON
//
//                    let fundAnalystTalkData = try fundAnalystTalk.rawData(options: .fragmentsAllowed)//AnalystTalk
//                    let fundAnalystTalkModel = try JSONDecoder().decode([IPORolloverDatas].self, from: fundAnalystTalkData)// IPO
//                    print(fundAnalystTalkModel)
//                    self.fetchIPORollover = fundAnalystTalkModel
//                    print("DAta>>>", self.fetchIPORollover)
//                   
//                }
//                catch let err{
//                    print("Err", err)
//                    
//                }
//            case let .failure(error):
//                print(error)
//                
//            }
//           }
//    }
}

