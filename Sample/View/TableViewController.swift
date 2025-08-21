//
//  TableViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/21/25.
//

import UIKit

struct Product {
    var imageName: String
    var title: String
    var description: String
   
}


class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var listTableView: UITableView!
    
    var productList: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.dataSource = self
        listTableView.delegate = self
        
        productList = [
            Product(imageName: "Glass", title: "Glasses", description: "This is best Glasses I've ever seen"),
            Product(imageName: "Desert", title: "Desert", description: "This is so yummy"),
            Product(imageName: "Lens", title: "Camera Lens", description: "I wish I had this camera lens")
        ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as? ListCell else {
            return UITableViewCell()
        }
        
        let product = productList[indexPath.row]
        
        cell.imageL.image = UIImage(named: product.imageName)
        cell.titleLabel.text = product.title
        cell.descriptionLabel.text = product.description
        
        return cell
    }
    
    // MARK: Delegate Methods
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedProduct = productList[indexPath.row]
        print("User selected: \(selectedProduct.title)")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }
}
