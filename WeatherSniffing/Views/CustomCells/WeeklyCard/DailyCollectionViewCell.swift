//
//  DailyCollectionViewCell.swift
//  WeatherSniffing
//
//  Created by ilkay sever on 24.09.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import UIKit

class DailyCollectionViewCell: UICollectionViewCell, ReusableView, NibLoadableView {
    
    
    @IBOutlet weak var dailyContainerView: UIView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var degreeTypeImg: UIImageView!
    @IBOutlet weak var degreeLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
