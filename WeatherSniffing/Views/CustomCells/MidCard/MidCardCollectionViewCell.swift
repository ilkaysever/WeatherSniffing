//
//  MidCardCollectionViewCell.swift
//  WeatherSniffing
//
//  Created by ilkay sever on 27.08.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import UIKit

class MidCardCollectionViewCell: UICollectionViewCell, ReusableView, NibLoadableView {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var cardImg: UIImageView!
    @IBOutlet weak var timeView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var weatherImg: UIImageView!
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var degreeTypeImg: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        setLayers()
        
    }
    
    private func setLayers() {
        timeView.layer.cornerRadius = 8
        cardImg.layer.cornerRadius = 40
    }

}
