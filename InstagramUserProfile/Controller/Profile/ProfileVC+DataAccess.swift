//
//  ProfileVC+DataAccess.swift
//  InstagramUserProfile
//
//  Created by IbrahimSalah on 10/3/19.
//  Copyright © 2020 Socyle. All rights reserved.
//

import Foundation
extension ProfileVC {
    func fetchUserInfo() -> User? {
        return User(imageProfile: "socyle_logo",
                    name: "Socyle",
                    location: "Mansoura, EG",
                    bio: "Socyle is a software professional services organization. Headquartered in Egypt, the company offers Portals, Mobile Development",
                    postsCount: "110",
                    followersCount: "2.5M",
                    followingCount: "0",
                    gallery: ["1","2","3","4","5","6","7","3","1","2","11","12","6","1","2","3"])
    }
}
