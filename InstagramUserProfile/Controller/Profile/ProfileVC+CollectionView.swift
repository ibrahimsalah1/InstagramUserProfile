//
//  ProfileVC+CollectionView.swift
//  InstagramUserProfile
//
//  Created by IbrahimSalah on 10/3/19.
//  Copyright © 2020 Socyle. All rights reserved.
//

import UIKit

extension ProfileVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func setupProfileCollectionView() {
        profileVCView.profileCollectionView.delegate = self
        profileVCView.profileCollectionView.dataSource = self
        profileVCView.profileCollectionView.register(UserInfoCell.self, forCellWithReuseIdentifier: CollectionViewCellsIds.userInfo)
        profileVCView.profileCollectionView.register(UserGalleryCell.self, forCellWithReuseIdentifier: CollectionViewCellsIds.userGallery)
        profileVCView.profileCollectionView.contentInset = .init(top: 10, left: 20, bottom: 10, right: 20)
        profileVCView.profileCollectionView.reloadData()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return section == 0 ? 1 : user.gallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let userInfoCell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellsIds.userInfo, for: indexPath) as! UserInfoCell
            userInfoCell.confgiure(withUser: user)
            return userInfoCell
        } else {
            let userGalleryCell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellsIds.userGallery, for: indexPath) as! UserGalleryCell
            userGalleryCell.configure(withImage:user.gallery[indexPath.item])
            return userGalleryCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return .init(width: profileVCView.frame.width - 65, height: 300)
        } else {
            return .init(width: (profileVCView.frame.width / 3) - 20 , height: 100)
        }
    }
}
