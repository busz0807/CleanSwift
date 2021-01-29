//
//  FundAnslystReportViewController.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 28/1/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol FundAnslystReportDisplayLogic: class
{
  func displaySomething(viewModel: FundAnslystReport.Something.ViewModel)
    func displayMonthly(viewModel: FundAnslystReport.MonthlyData.ViewModel)
    func displayWeekly(viewModel: FundAnslystReport.WeeklyData.ViewModel)
    func displayAnalystTalks(viewModel: FundAnslystReport.AnalystTalk.ViewModel)
}

class FundAnslystReportViewController: UIViewController, FundAnslystReportDisplayLogic
{
    @IBOutlet weak var tableViewMonthly: UITableView!
    @IBOutlet weak var tableViewWeekly: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var lbtitle: UILabel!
    @IBOutlet weak var lbUpdate: UILabel!
    var interactor: FundAnslystReportBusinessLogic?
    var analystReportMonthly: [AnalystReportMonthlyModel]?
    var analystTalkData: [AnalystTalksModel]?
    var analystReportWeekly: [AnalystReportWeeklyModel]?
  var router: (NSObjectProtocol & FundAnslystReportRoutingLogic & FundAnslystReportDataPassing)?

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
    let interactor = FundAnslystReportInteractor()
    let presenter = FundAnslystReportPresenter()
    let router = FundAnslystReportRouter()
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
 
  override func viewDidLoad()
  {
    super.viewDidLoad()
    self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    doSomething()
    fetchMonthlyData()
    fetchWeeklyData()
    fetchAnalystTalksData()
  }
  
  // MARK: Do something
  
  //@IBOutlet weak var nameTextField: UITextField!
  
  func doSomething()
  {
    let request = FundAnslystReport.Something.Request()
    interactor?.doSomething(request: request)
   
  }
    func fetchMonthlyData() {
        let request = FundAnslystReport.MonthlyData.Request()
        interactor?.fetchMonthlyData(request:request)
    }
    func fetchWeeklyData() {
        let request = FundAnslystReport.WeeklyData.Request()
        interactor?.fetchWeeklyData(request:request)
    }
    func fetchAnalystTalksData() {
        let request = FundAnslystReport.AnalystTalk.Request()
        interactor?.fetchAnalystTalksData(request:request)
    }
  
  
  func displaySomething(viewModel: FundAnslystReport.Something.ViewModel)
  {
//    print("IPO >>>", viewModel.analystReportData)
    self.lbtitle.text = viewModel.analystReportData?.HeadlineTh ?? ""
    self.lbUpdate.text = viewModel.analystReportData?.lastUpdate ?? "" 
  }
    func displayMonthly(viewModel: FundAnslystReport.MonthlyData.ViewModel) {
        
        self.analystReportMonthly = viewModel.analystReportMonthlyData
        print  ("Monthly>>>", self.analystReportMonthly ?? "")
        self.tableViewMonthly.reloadData()
    }
    func displayWeekly(viewModel: FundAnslystReport.WeeklyData.ViewModel){
        self.analystReportWeekly = viewModel.analystReportWeeklyData
        print("Weekly >>>", self.analystReportWeekly ?? "")
        self.tableViewWeekly.reloadData()
    }
    func displayAnalystTalks(viewModel: FundAnslystReport.AnalystTalk.ViewModel) {
        self.analystTalkData = viewModel.analystTalkData
        print("AnalystTalks >>", self.analystTalkData ?? "")
        self.collectionView.reloadData()
    }
}
extension FundAnslystReportViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.analystTalkData?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnalystTalksViewCell", for: indexPath) as! AnalystTalksViewCell
        cell.data = self.analystTalkData?[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 160.0, height: 145.0)
    }
    
}
extension FundAnslystReportViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableViewWeekly{
            return self.analystReportWeekly?.count ?? 0
        }else {
            return self.analystReportMonthly?.count ?? 0
    }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tableViewWeekly {
            let cell = tableViewWeekly.dequeueReusableCell(withIdentifier: "WeeklyViewCell") as! WeeklyViewCell
                       cell.data = self.analystReportWeekly?[indexPath.row]
                       return cell
        }else {
           
            let cellMonthly = tableViewMonthly.dequeueReusableCell(withIdentifier: "MonthlyViewCell") as! MonthlyViewCell
            cellMonthly.data = self.analystReportMonthly?[indexPath.row]
            return cellMonthly
        }
    }
    
    
    
}
