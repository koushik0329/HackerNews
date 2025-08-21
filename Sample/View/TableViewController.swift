//
//  TableViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/21/25.
//

import UIKit

struct IPhone{
    var model: Int
    var year: Int
}

class TableViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    @IBOutlet weak var listTableView: UITableView!
    
    var iphoneList: [IPhone] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.dataSource = self
        listTableView.delegate = self
        
        let objIphone1: IPhone = IPhone(model: 17, year: 2025)
        let objIphone2: IPhone = IPhone(model: 16, year: 2024)
        let objIphone3: IPhone = IPhone(model: 15, year: 2023)
        iphoneList.append(contentsOf: [objIphone1, objIphone2, objIphone3, objIphone1, objIphone2, objIphone3, objIphone1, objIphone2, objIphone3, objIphone1, objIphone2, objIphone3, objIphone1, objIphone2, objIphone3, objIphone1, objIphone2, objIphone3, objIphone1, objIphone2, objIphone3])
    }
    
    // MARK : Data source methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iphoneList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as? ListCell else {
            return UITableViewCell()
        }
        
        let iphone: IPhone = iphoneList[indexPath.row]
        cell.titleLabel.text = "iphone" + String(iphone.model)
        return cell
    }
    
    //MARK: Delegate Methods
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedIPhone = iphoneList[indexPath.row]
        print("User Selected iPhone: iPhone \(selectedIPhone.model) - Year: \(selectedIPhone.year)")
    }

}
