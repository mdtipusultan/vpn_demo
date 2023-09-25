//
//  locationCell.swift
//  Vpn
//
//  Created by Tipu on 13/10/22.
//

import UIKit

class locationCell: UITableViewCell {

    @IBOutlet weak var backview: UIView!
    @IBOutlet weak var selectionButton: UIButton!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var countryImage: UIImageView!
    let addcountry = false
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func selectionButton(_ sender: UIButton) {
        /*
        if countryImage.tag == 1 {
            countryImage.tag = 0
            countryImage.image = UIImage(named:"demo")
        } else {
            countryImage.tag = 1
            countryImage.image = UIImage(named:"unhide")
        }
         */
    }
}
