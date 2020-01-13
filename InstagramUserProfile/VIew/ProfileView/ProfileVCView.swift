//
//  ProfileVCView.swift
//  InstagramUserProfile
//
//  Created by IbrahimSalah on 10/3/19.
//  Copyright © 2020 Socyle. All rights reserved.
//

import UIKit

class ProfileVCView: UIView {
    
    var profileCollectionView : UICollectionView = {
        var colllectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        return colllectionView
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 0.9724534154, green: 0.9726158977, blue: 0.9724320769, alpha: 1)
        setupProfileCollectionView()
    }
    
    func setupProfileCollectionView() {
        addSubview(profileCollectionView)
        profileCollectionView.fillSuperview(padding: .init(top: 20, left: 0, bottom: 0, right: 0))
        profileCollectionView.backgroundColor = #colorLiteral(red: 0.9724534154, green: 0.9726158977, blue: 0.9724320769, alpha: 1)
    }
    
}
