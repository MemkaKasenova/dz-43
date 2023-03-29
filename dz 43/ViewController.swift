//
//  ViewController.swift
//  dz 43
//
//  Created by merim kasenova on 16/3/23.
//

import UIKit

class ViewController: UIViewController {

    private var catalogList: [Product] = []
    
    @IBOutlet weak var catalogTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        catalogTableView.dataSource = self
        catalogTableView.delegate = self
        initData()
    }
    private func initData() {
       catalogList = [
            Product(id: 0, type: "Furniture", count: 785,image: "image1",
                    details: ProductDetails(roomType: "AbocoFur Modern Velvet Fabric Lazy Chair",
//                                            "Office, Living Room",
                                            color: "black" , material: "Textile, Velvet, Cotton",
                                            dimensions: "25.6 * 31.5 * 37.4 inches",
                                            weight: "20.3 Pounds", star: 5, name: "divan", price: "230 $") ),
           Product(id: 0, type: "KitchenWare", count: 7251,image: "image2",
                   details: ProductDetails(roomType: "AbocoFur Modern Velvet Fabric Lazy Chair",
//                                           roomType: "Office, Living Room",
                                           color: "green" , material: "Textile, Velvet, Cotton",
                                           dimensions: "25.6 * 31.5 * 37.4 inches",
                                           weight: "20.3 Pounds", star: 5, name: "kitchen", price: "230 $") ),
           Product(id: 0, type: "Reading Table", count: 7251,image: "image3",
                   details: ProductDetails(roomType: "AbocoFur Modern Velvet Fabric Lazy Chair",
//                                           roomType: "Office, Living Room",
                                           color: "red" , material: "Textile, Velvet, Cotton",
                                           dimensions: "25.6 * 31.5 * 37.4 inches",
                                           weight: "20.3 Pounds", star: 5, name: "table", price: "230 $") ),
//           Product(id: 0, type: "Kitchen", count: 7251, image: "image4",
//                   details: ProductDetails(roomType: "AbocoFur Modern Velvet Fabric Lazy Chair",
////                                           roomType: "Office, Living Room",
//                                           color: "black" , material: "Textile, Velvet, Cotton",
//                                           dimensions: "25.6 * 31.5 * 37.4 inches",
//                                           weight: "20.3 Pounds", star: 5, name: "kit", price: "230 $") ),
//           Product(id: 0, type: "Kitchen", count: 7251,
//                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
//                                           roomType: "Office, Living Room",
//                                           color: .yellow , material: "Textile, Velvet, Cotton",
//                                           dimensions: "25.6 * 31.5 * 37.4 inches",
//                                           weight: "20.3 Pounds", star: 5, price: "230 $") )
        ]

    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        catalogList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CatalogTableViewCell
        cell.initCellUI(image: catalogList[indexPath.row].image,
                        title: catalogList[indexPath.row].details.name,
                        count: String (catalogList[indexPath.row].count))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondViewController()
//        vc.catalogDetail = catalogList[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

struct Product {
    let id: Int
    let type: String
    let count: Int
    let image: String
    let details: ProductDetails
}

struct ProductDetails {
    let roomType: String
    let color: String
    let material: String
    let dimensions: String
    let weight: String
    let star: Int
    let name: String
    let price: String
}
