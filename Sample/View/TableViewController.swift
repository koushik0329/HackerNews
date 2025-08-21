//
//  TableViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/21/25.
//

import UIKit

class TableViewController: UIViewController , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "Row \(indexPath.row)"
        return cell
    }
    
    @IBOutlet weak var listTableView: UITableView!
    override func viewDidLoad() {
    
        super.viewDidLoad()
        listTableView.dataSource = self
        
        
        }
    
    
}
