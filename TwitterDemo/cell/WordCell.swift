//
//  WordCell.swift
//  TwitterDemo
//
//  Created by Arshad Kazi on 30/08/18.
//  Copyright © 2018 Arshad Kazi. All rights reserved.
//

import UIKit


class WordCell: UICollectionViewCell {
    
    
    let profileImage : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.backgroundColor = .blue
        return img
    }()
    
    let nameLabel : UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = UIColor.orange
        l.text = "Sumit Yadav"
        return l
    }()
    let userName : UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.backgroundColor = UIColor.purple
        l.text = "@binarynumbers"
        return l
    }()
    let followButton : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.cyan
        return btn
    }()
    let bioText : UITextView = {
        let t = UITextView()
        t.translatesAutoresizingMaskIntoConstraints = false
        t.backgroundColor = UIColor.yellow
        t.text = "This is a simple bio text for the ios developer!"
        return t
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(profileImage)
        addSubview(nameLabel)
        addSubview(userName)
        addSubview(bioText)
        addSubview(followButton)
                
        profileImage.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        profileImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: profileImage.topAnchor).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 16).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: followButton.leftAnchor, constant: -8).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        userName.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4).isActive = true
        userName.leftAnchor.constraint(equalTo: nameLabel.leftAnchor, constant: 0).isActive = true
        userName.rightAnchor.constraint(equalTo: nameLabel.rightAnchor, constant: 0).isActive = true
        userName.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        followButton.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 0).isActive = true
        followButton.leftAnchor.constraint(equalTo: nameLabel.rightAnchor, constant: 8).isActive = true
        followButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        followButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        followButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        bioText.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 4).isActive = true
        bioText.leftAnchor.constraint(equalTo: userName.leftAnchor, constant: 0).isActive = true
        bioText.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        bioText.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
