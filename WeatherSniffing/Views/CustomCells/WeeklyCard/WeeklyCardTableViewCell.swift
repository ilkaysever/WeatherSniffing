//
//  WeeklyCardTableViewCell.swift
//  WeatherSniffing
//
//  Created by ilkay sever on 24.09.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import UIKit

class WeeklyCardTableViewCell: UITableViewCell, ReusableView, NibLoadableView {
    
    
    @IBOutlet weak var weeklyCardCollectionView: UICollectionView!
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayers()
        setDelegates()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    private func setDelegates() {
        weeklyCardCollectionView.delegate = self
        weeklyCardCollectionView.dataSource = self
        weeklyCardCollectionView.register(DailyCollectionViewCell.self)
    }
    
    private func setLayers() {
        containerView.layer.cornerRadius = 10
    }
    
}

extension WeeklyCardTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: DailyCollectionViewCell = collectionView.dequeueReusableCell(for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.frame.height
        let width = collectionView.frame.width
        return CGSize(width: width / 5, height: height / 1.3)
    }
    
}
