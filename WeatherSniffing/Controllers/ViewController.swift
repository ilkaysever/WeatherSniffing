//
//  ViewController.swift
//  WeatherSniffing
//
//  Created by ilkay sever on 26.08.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var weatherData: WeatherModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegates()
    }
    
    private func setDelegates() {
        mainTableView.dataSource = self
        mainTableView.delegate = self
        mainTableView.register(CaroselTableViewCell.self)
        mainTableView.register(MidCardTableViewCell.self)
        mainTableView.register(WeeklyCardTableViewCell.self)
    }
    
    func getWeatherData() {
        let city = "London"
        let apiKey = "f29dca0b8344ffbe396499a542c687d8"
        RequestManager.shared.fetchWeatherData(city: city, apiKey: apiKey) { (object) in
            self.weatherData = object
            print(self.weatherData)
        } error: { (error) in
            print(error)
        }


    }
    
    //    @IBAction func crashButton(_ sender: Any) {
    //        fatalError()
    //    }
    
}
//MARK: - Table View Delegates
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    enum Sections: Int, CaseIterable {
        case carosel
        case midCard
        case weeklyCard
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Sections.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch Sections(rawValue: section)! {
        case .carosel:
            return 1
        case .midCard:
            return 1
        case .weeklyCard:
            return 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch Sections(rawValue: indexPath.section)! {
        case .carosel:
            let cell: CaroselTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case .midCard:
            let cell: MidCardTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case .weeklyCard:
            let cell: WeeklyCardTableViewCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = view.frame.height
        switch Sections(rawValue: indexPath.section)! {
        case .carosel:
            return 150
        case .midCard:
            return height / 3 
        case .weeklyCard:
            return height / 3
        }
    }
    
}
