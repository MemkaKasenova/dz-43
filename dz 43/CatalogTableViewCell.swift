//
//  CatalogTableViewCell.swift
//  dz 43
//
//  Created by merim kasenova on 21/3/23.
//

import UIKit

class CatalogTableViewCell: UITableViewCell {

    @IBOutlet weak var catalogImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    func initCellUI(image:String, title:String, count:String) {
        catalogImage.image = UIImage(named: image)
        titleLabel.text = title
        countLabel.text = count
        catalogImage.contentMode = .scaleAspectFill
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
