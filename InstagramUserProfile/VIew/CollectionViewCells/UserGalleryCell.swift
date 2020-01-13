//
//  UserGalleryCell.swift
//  InstagramUserProfile
//
//  Created by IbrahimSalah on 10/3/19.
//  Copyright © 2020 Socyle. All rights reserved.
//

import UIKit
class UserGalleryCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        var image = UIImageView()
        image.layer.cornerRadius = 5
        image.clipsToBounds = true
        image.backgroundColor = .blue
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        imageView.fillSuperview()
    }
    
    func configure(withImage image:String){
        imageView.image = UIImage(named: image)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
