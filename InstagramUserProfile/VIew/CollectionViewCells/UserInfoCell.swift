//
//  UserInfoCell.swift
//  InstagramUserProfile
//
//  Created by IbrahimSalah on 10/3/19.
//  Copyright © 2020 Socyle. All rights reserved.
//

import UIKit
class UserInfoCell: UICollectionViewCell {
    
    var userInfoHStackView: UIStackView!
    
    let profilePhoto: UIImageView = {
        var photo = UIImageView()
        photo.constrainWidth(constant: 120)
        photo.constrainHeight(constant: 120)
        photo.layer.cornerRadius = 60
        photo.clipsToBounds = true
        photo.contentMode = .scaleAspectFill
        return photo
    }()
    
    let userNameLabel : UILabel = {
        var name = UILabel()
        name.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return name
    }()
    
    let userLocation : UILabel = {
        var location = UILabel()
        location.font = UIFont.systemFont(ofSize: 18)
        location.textColor = #colorLiteral(red: 0.582516253, green: 0.6382364631, blue: 0.7164646983, alpha: 1)
        return location
    }()
    
    let userBioLabel : UILabel = {
        var bio = UILabel()
        bio.font = UIFont.systemFont(ofSize: 15)
        bio.textColor = #colorLiteral(red: 0.582516253, green: 0.6382364631, blue: 0.7164646983, alpha: 1)
        bio.numberOfLines = 0
        return bio
    }()
    
    let followersAndPostsView : CardView = {
        var view = CardView()
        view.backgroundColor = .white
        view.cornerRadius = 12
        view.shadowOffsetHeight = 0.1
        view.shadowColor = .lightGray
        view.shadowOpacity = 0.1
        return view
    }()
    
    let postNumberLabel : UILabel = {
        var posts = UILabel()
        posts.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return posts
    }()
    
    let followersNumberLabel : UILabel = {
        var followers = UILabel()
        followers.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return followers
    }()
    
    let followingNumberLabel : UILabel = {
        var following = UILabel()
        following.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return following
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUserInfoSection()
        setupPostsAndFollowersSection()
    }
    
    func confgiure(withUser user:User){
        profilePhoto.image = UIImage(named: user.imageProfile)
        userNameLabel.text = user.name
        userLocation.text = user.location
        followersNumberLabel.text = user.followersCount
        postNumberLabel.text = user.postsCount
        followingNumberLabel.text = user.followingCount
        userBioLabel.text = user.bio
    }
    
    private func setupUserInfoSection() {
        let userNameAndLocationVStack = UIStackView(arrangedSubviews: [userNameLabel,userLocation])
        userNameAndLocationVStack.axis = .vertical
        userNameAndLocationVStack.distribution = .fill
        userNameAndLocationVStack.alignment = .fill
        let vStack = UIStackView(arrangedSubviews: [userNameAndLocationVStack, userBioLabel])
        vStack.axis = .vertical
        vStack.spacing = 5
        userInfoHStackView = UIStackView(arrangedSubviews: [profilePhoto,vStack])
        userInfoHStackView.axis = .horizontal
        userInfoHStackView.spacing = 10
        addSubview(userInfoHStackView)
        userInfoHStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor)
        userInfoHStackView.alignment = .center
    }

    
    private func setupPostsAndFollowersSection() {
        addSubview(followersAndPostsView)
        followersAndPostsView.anchor(top: userInfoHStackView.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor,padding: .init(top: 20, left:0, bottom: 30, right: 0))
        
        let postsLabel = UILabel()
        postsLabel.text = "Posts"
        postsLabel.textColor = #colorLiteral(red: 0.582516253, green: 0.6382364631, blue: 0.7164646983, alpha: 1)
        let postsVStack = UIStackView(arrangedSubviews: [postNumberLabel,postsLabel])
        postsVStack.alignment = .center
        postsVStack.axis = .vertical
        postsVStack.spacing = 3
        
        let followersLabel = UILabel()
        followersLabel.text = "Followers"
        
        followersLabel.textColor = #colorLiteral(red: 0.582516253, green: 0.6382364631, blue: 0.7164646983, alpha: 1)
        let followersVStack = UIStackView(arrangedSubviews: [followersNumberLabel,followersLabel])
        followersVStack.alignment = .center
        followersVStack.axis = .vertical
        followersVStack.spacing = 3
        
        let followingLabel = UILabel()
        followingLabel.text = "Following"
        followingLabel.textColor = #colorLiteral(red: 0.582516253, green: 0.6382364631, blue: 0.7164646983, alpha: 1)
        
        let followingVStack = UIStackView(arrangedSubviews: [followingNumberLabel,followingLabel])
        followingVStack.alignment = .center
        followingVStack.axis = .vertical
        followingVStack.spacing = 3
        
        
        let wholeHstack = UIStackView(arrangedSubviews: [postsVStack, followersVStack, followingVStack])
        
        followersAndPostsView.addSubview(wholeHstack)
        wholeHstack.fillSuperview(padding: .init(top: 12, left: 22, bottom: 12, right: 22))
        
        wholeHstack.distribution = .equalSpacing
        wholeHstack.alignment = .fill
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
