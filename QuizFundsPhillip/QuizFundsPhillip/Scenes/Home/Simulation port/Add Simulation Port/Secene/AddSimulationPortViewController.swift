//
//  AddSimulationPortViewController.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 9/3/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import RealmSwift
protocol AddSimulationPortDisplayLogic: class
{
  func displaySomething(viewModel: AddSimulationPort.Something.ViewModel)
    func displayFetchnavData(viewModel: AddSimulationPort.FetchNavListData.ViewModel)
    func displayInsertFunds(viewModel: AddSimulationPort.FetchInsertDataFunds.ViewModel)
}

class AddSimulationPortViewController: UIViewController, AddSimulationPortDisplayLogic
{
  
    @IBAction func segmentControlPassed(_ sender: UISegmentedControl) {
       switch segmentControl.selectedSegmentIndex {
    
        case 0:
          
            self.textfield.placeholder = "0 บาท"
            self.numbersegmentControl = self.textfield.text ?? ""
            let textstring = self.textfield.text ?? ""
            let textDouble = Double(textstring) ?? 0.00
            let navbuy =  self.navbuy
            let num =  textDouble / navbuy
            self.amountandbath = textDouble
            self.grsamandunits = num
            print("number>>>", num)
            
        case 1:
          
            self.textfield.placeholder = "0 หน่วย"
            self.numbersegmentControl = self.textfield.text ?? ""
            let textstring = self.textfield.text ?? ""
            let textDouble = Double(textstring) ?? 0.00
            let navbuy =  self.navbuy
            let num =  textDouble * navbuy
            self.amountandbath = num
            self.grsamandunits = textDouble
            print("number>>>", num)
        default:
            break
        }
    }
 
    @IBOutlet weak var navLabel: UILabel!
    @IBOutlet weak var changeLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var navdatelabel: UILabel!
    @IBOutlet weak var sellLabel: UILabel!
    @IBOutlet weak var buyLabel: UILabel!
    @IBOutlet weak var navtextField: UITextField!
    @IBAction func AddSimportBtn(_ sender: Any) {
        if self.mainPage == "SarchPage" {
            self.doFetchInsertFunds()
            self.setNotificationCenter()
            router?.goToSimportPage()
        } else if self.mainPage == "BuyandSellPage" {
            self.doFetchInsertFunds()
            self.setNotificationCenter()
            router?.goToSimportPage()
        }
    }
    @IBAction func calendarbtn(_ sender: Any) {
    }
    @IBOutlet weak var setcalendarbtn: UIButton!
    @IBOutlet weak var investOpenDateLabel: UILabel!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var navtitle: UINavigationItem!
    @IBOutlet weak var navBar: UINavigationBar!
    @IBAction func navBtnback(_ sender: Any) {
        router?.backtoPagePreview()
    }
    @IBAction func btnrisk(_ sender: Any) {
        router?.sendDatagoToRiskPreview(risk: self.searchFunds?.risk)
    }
    @IBOutlet weak var setbtnrisk: UIButton!
    @IBOutlet weak var lbenname: UILabel!
    @IBOutlet weak var lbthname: UILabel!
    @IBOutlet weak var setView: UIView!
    var portNo: Int = 0
    var navbuy = 0.00
    var numbersegmentControl = ""
    var grsamandunits = 0.00
    var amountandbath = 0.00
    var getOrderList: DataGetOrder?
    var risk = 0
    var fcode = ""
    var mainPage = ""
    var enName = ""
    var thName = ""
    var nav = ""
    var chage = ""
    var buy = ""
    var sell = ""
    var datenav = ""
    var assetCompany = ""
    var investOpenDate = ""
    var color = ""
    var navListData: [NavListDb]?
    var navslist: [NavListModel]?
    var searchFunds: ReealmFundsListMobile?
  var interactor: AddSimulationPortBusinessLogic?
  var router: (NSObjectProtocol & AddSimulationPortRoutingLogic & AddSimulationPortDataPassing)?

  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup()
  {
    let viewController = self
    let interactor = AddSimulationPortInteractor()
    let presenter = AddSimulationPortPresenter()
    let router = AddSimulationPortRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }
  
  // MARK: Routing
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
  {
    if let scene = segue.identifier {
      let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
      if let router = router, router.responds(to: selector) {
        router.perform(selector, with: segue)
      }
    }
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("mainPage", self.mainPage)
    doSomething()
    doFetchnavData()
    self.mainPAge(mainPAge: self.mainPage)
  }
    func setbtniamge(risk: Int) {
        if risk == 1 {
            self.setbtnrisk.setImage(UIImage(named: "111"), for: .normal)
        } else if risk == 2 {
            self.setbtnrisk.setImage(UIImage(named: "222"), for: .normal)
        } else if risk == 3 {
            self.setbtnrisk.setImage(UIImage(named: "333"), for: .normal)
        } else if risk == 4 {
            self.setbtnrisk.setImage(UIImage(named: "444"), for: .normal)
        } else if risk == 5 {
            self.setbtnrisk.setImage(UIImage(named: "555"), for: .normal)
        } else if risk == 6 {
            self.setbtnrisk.setImage(UIImage(named: "666"), for: .normal)
        } else if risk == 7 {
            self.setbtnrisk.setImage(UIImage(named: "777"), for: .normal)
        } else  {
            self.setbtnrisk.setImage(UIImage(named: "888"), for: .normal)
        }
    }
    func mainPAge(mainPAge: String) {
        if self.mainPage == "SarchPage" {
            print("FundsCode>>", self.searchFunds?.code ?? "")
            print("Server", Realm.Configuration.defaultConfiguration.fileURL ?? "")
            self.navtitle?.title = self.searchFunds?.assetCompany
            self.navBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
            self.navBar.barTintColor = UIColor.systemBlue;
            self.setView.clipsToBounds = true
            self.setView.layer.cornerRadius = 15
        //    self.setView.layer.shadowOpacity = 0.3
            self.setView.layer.shadowRadius = 10
            self.setView.layer.masksToBounds = false
            self.lbenname.text = self.searchFunds?.enName
            self.lbthname.text = self.searchFunds?.thName
            let dataFormatter = DateFormatter()
            dataFormatter.dateFormat = "dd/MM/yyyy"
            let formattedDate = dataFormatter.string(from: Date())
            self.setcalendarbtn.setTitle(formattedDate, for: .normal)
            //MARK : SETBTNIMAGERISK
            self.setbtniamge(risk: searchFunds?.risk ?? 0)
            let realm: Realm = try! Realm()
            let result = realm.objects(NavListDb.self)
            let navlistdata = Array(result)
            self.navListData = navlistdata
//            print("navListData", self.navListData?.count)
            let count = self.navListData?.count ?? 0 - 1
            let countnav = Int(count) - 1
            for countindex in 0...countnav  {
        //            print("fundscode", viewModel.NavList?[countindex].fundCode ?? "")
        //            print("code", self.searchFunds?.code ?? "")
                    if self.navListData?[countindex].fundCode ?? "" == self.searchFunds?.code ?? ""  {
                        
                        self.buyLabel.text = "\(self.navListData?[countindex].buy ?? 0.00)"
                        self.navLabel.text = "\(self.navListData?[countindex].nav ?? 0.00)"
                        self.sellLabel.text = "\(self.navListData?[countindex].sell ?? 0.00)"
                        self.navtextField.text = "\(self.navListData?[countindex].buy ?? 0.00)"
                        let change = self.navListData?[countindex].change ?? 0.00
                        if change < 0.00000000 {
                            self.changeLabel.text = "\(self.navListData?[countindex].change ?? 0.00)(\(self.navListData?[countindex].changePercent ?? 0.00)%)"
                            self.changeLabel.textColor = .red
                        }else {
                            self.changeLabel.text = "+\(self.navListData?[countindex].change ?? 0.00)(+\(self.navListData?[countindex].changePercent ?? 0.00)%)"
                            self.changeLabel.textColor = .green
                        }
//                        self.changeLabel.text = "+\(self.navListData?[countindex].change ?? 0.00)(\(self.navListData?[countindex].changePercent ?? 0.00)%)"
                        let navbuy = Double(self.navListData?[countindex].buy ?? 0.00)
                        if navbuy == 0.00 {
                            self.navbuy = self.navListData?[countindex].nav ?? 0.00
                        } else {
                            self.navbuy = self.navListData?[countindex].buy ?? 0.00
                        }
                        let dateString = self.navListData?[countindex].date ?? ""
        //                print("date", dateString)
                        let dateFormatter = DateFormatter()
                        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
                        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
                        let date = dateFormatter.date(from: "\(dateString)")!
                    
                        let dateFormatterString = DateFormatter()
                        dateFormatterString.dateFormat = "dd/MM/yyyy"
                        let formattedDate1 = dataFormatter.string(from: date)
                        self.investOpenDateLabel.text = "   \(formattedDate1)"
                        self.navdatelabel.text = "NAV ณ วันที่  \(formattedDate1)"
                        self.fcode = self.searchFunds?.fundId ?? ""
                    }
                }
            
            } else  if self.mainPage == "BuyandSellPage" {
                self.lbenname.text = self.enName
                self.lbthname.text = self.thName
                self.navtitle.title = self.assetCompany
                self.setbtniamge(risk: self.risk)
                self.navLabel.text = self.nav
                let color = self.color
                if color == "red" {
                    self.changeLabel.text = self.chage
                    self.changeLabel.textColor = .red
                }else if color == "green" {
                    self.changeLabel.text = self.chage
                    self.changeLabel.textColor = .green
                }
                self.buyLabel.text = self.buy
                self.sellLabel.text = self.sell
                self.navdatelabel.text = "NAV ณ วันที่  \(self.datenav)"
                self.investOpenDateLabel.text = "   \(self.datenav)"
                self.navBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
                self.navBar.barTintColor = UIColor.systemBlue;
                self.navbuy = Double(self.buy) ?? 0.00
                self.navtextField.text = self.buy
                    
                }

    }
  // MARK: Do something
  
  //@IBOutlet weak var nameTextField: UITextField!
  
  func doSomething()
  {
    let request = AddSimulationPort.Something.Request()
    interactor?.doSomething(request: request)
  }
    func doFetchnavData()
    {
      let request = AddSimulationPort.FetchNavListData.Request()
      interactor?.doFetchnavData(request: request)
    }
  
  
  func displaySomething(viewModel: AddSimulationPort.Something.ViewModel)
  {
    self.searchFunds = viewModel.searchfunds
    self.portNo = viewModel.portNo
    self.mainPage = viewModel.mainPage
        self.enName = viewModel.enName
        self.risk = viewModel.risk
        self.thName = viewModel.thName
        self.assetCompany = viewModel.assetCompany
        self.nav = viewModel.nav
        self.chage = viewModel.chage
        self.buy = viewModel.buy
        self.sell = viewModel.sell
        self.datenav  = viewModel.datenav
        self.color = viewModel.color
        self.fcode = viewModel.getOrderList?.fcode ?? ""
    
//    print("MainPage>>", viewModel.mainPage)
    self.mainPAge(mainPAge: viewModel.mainPage)

    self.investOpenDateLabel.text = "  \(self.searchFunds?.investOpenDate ?? "")"
  }
    func displayFetchnavData(viewModel: AddSimulationPort.FetchNavListData.ViewModel) {
        
        self.navslist = viewModel.NavList
       
//        for navList in  navslist! {
//        self.saveNAVList(data: navList)
//        }

    }
    func saveNAVList(data: NavListModel) {
        let realm: Realm = try! Realm()
        try! realm.write {
            let task = NavListDb(data: data)
            realm.add(task, update: .all)
        }
    }
    func checkFundsListExisting(data: NavListModel) -> Bool {
        
        let realm: Realm = try! Realm()
        return realm.object(ofType: NavListDb.self, forPrimaryKey: data.fundCode ?? "") != nil
    }
    func doFetchInsertFunds() {
//    let fundsId = self.searchFunds?.fundId ?? ""
    let dataFormatter = DateFormatter()
    dataFormatter.dateFormat = "yyyyMMdd"
    let formattedDate1 = dataFormatter.string(from: Date())

        let request = AddSimulationPort.FetchInsertDataFunds.Request(username: "bookling01", portNo: self.portNo, portName: "null", fcode: self.fcode, ordtp: 1, grsam: self.amountandbath , units: self.grsamandunits, unprc: self.navbuy, trndt: formattedDate1, status: "null", channel: "PI", realized: "null")
      interactor?.doFetchInsertFunds(request: request)
    }
    func displayInsertFunds(viewModel: AddSimulationPort.FetchInsertDataFunds.ViewModel) {
//        print("message", viewModel.insertOrder?.Success ?? "" )
    }
    // MARK: setNotificationCenter
    func setNotificationCenter() {
     
        NotificationCenter.default.post(name: NSNotification.Name(NotificationCenterAddSimulationPort.Clicked.rawValue), object: self)

    }
}
