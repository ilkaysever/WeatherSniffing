//
//  MidCardTableViewCell.swift
//  WeatherSniffing
//
//  Created by ilkay sever on 27.08.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import UIKit

class MidCardTableViewCell: UITableViewCell, ReusableView, NibLoadableView {
    
    
    @IBOutlet weak var midCardCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setDelegates()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    private func setDelegates() {
        midCardCollectionView.dataSource = self
        midCardCollectionView.delegate = self
        midCardCollectionView.register(MidCardCollectionViewCell.self)
    }
    
}

extension MidCardTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MidCardCollectionViewCell = collectionView.dequeueReusableCell(for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.frame.height
        let width = collectionView.frame.width
        return CGSize(width: width / 2.8, height: height / 1.2 )
    }
    
}
