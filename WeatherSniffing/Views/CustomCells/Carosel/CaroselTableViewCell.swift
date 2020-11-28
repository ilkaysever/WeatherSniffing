//
//  CaroselTableViewCell.swift
//  WeatherSniffing
//
//  Created by ilkay sever on 26.08.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import UIKit

class CaroselTableViewCell: UITableViewCell, ReusableView, NibLoadableView {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var changeDegreeTypeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func changeTypeTapped(_ sender: Any) {
        
    }
    
}
