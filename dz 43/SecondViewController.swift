//
//  SecondViewController.swift
//  dz 43
//
//  Created by merim kasenova on 21/3/23.
//

import UIKit

class SecondViewController: UIViewController {

       
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var boxButton: UIButton!
    @IBOutlet weak var trashButton: UIButton!
    @IBOutlet weak var chairImage: UIImageView!
    @IBOutlet weak var productDetailLabel: UILabel!
    @IBOutlet weak var abocoLabel: UILabel!
    @IBOutlet weak var roomTypeLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var materialLabel: UILabel!
    @IBOutlet weak var dimensionLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    
      
      var quantity: Int = 1

        var productType: String?
        var productImage: String?
        
        var roomType: String?
        var color: String?
        var material: String?
        var dimension: String?
        var weight: String?
      
        
        
        override func viewDidLoad() {
            super.viewDidLoad()

            
            abocoLabel.text = productType
            chairImage.image = UIImage(named: productImage!)
            roomTypeLabel.text = roomType
            colorLabel.text = color
            materialLabel.text = material
            dimensionLabel.text = dimension
            weightLabel.text = weight
            
//            updateLabels()
        }

//            func updateLabels() {
//                   quantityLabel.text = "\(quantity)"
//                priceLabel.text = String(format: "$%.2f", productPrice! * Double(quantity))
//               }

            @IBAction func decrementAction(_ sender: Any) {
                if quantity > 1 {
                           quantity -= 1
//                           updateLabels()
                       }
            }
            
            @IBAction func incrementAction(_ sender: Any) {
                quantity += 1
//                       updateLabels()
            }
            
            @IBAction func heartAction(_ sender: Any) {
                
                if heartButton.backgroundColor == .clear {
                    heartButton.backgroundColor = UIColor.red
                   } else {
                       heartButton.backgroundColor = .clear
                   }
                
                
            }
        }
    
    var catalogDetail: Product?
    
