//
//  WordCell.swift
//  TwitterDemo
//
//  Created by Arshad Kazi on 30/08/18.
//  Copyright © 2018 Arshad Kazi. All rights reserved.
//

import UIKit


class WordCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        
    }
    let profileImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let wordLable : UILabel = {
        let label = UILabel()
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TEST TEST TEST"
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .purple
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "@ username"
        return label
    }()
    let bioTextView: UITextView = {
        let label = UITextView()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This is a simple bio text"
        return label
    }()
    let followButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .cyan
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let replyButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named : "reply"), for: .normal)
        //        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    func setupViews() {
        addSubview(wordLable)
        addSubview(profileImageView)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        //        addSubview(replyButton)
        
        profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant : 12).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant : 12).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        wordLable.topAnchor.constraint(equalTo: profileImageView.topAnchor).isActive = true
        wordLable.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 10).isActive = true
        wordLable.rightAnchor.constraint(equalTo: followButton.leftAnchor, constant: -10).isActive = true
        wordLable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        usernameLabel.topAnchor.constraint(equalTo: wordLable.bottomAnchor, constant: 10).isActive = true
        usernameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 10).isActive = true
        usernameLabel.rightAnchor.constraint(equalTo: followButton.leftAnchor, constant: -10).isActive = true
        
        bioTextView.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 10).isActive = true
        bioTextView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 10).isActive = true
        bioTextView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        bioTextView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        bioTextView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        followButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        followButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        followButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        followButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        //
        //        replyButton.leftAnchor.constraint(equalTo: bioTextView.leftAnchor).isActive = true
        //        replyButton.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        //        replyButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        //        replyButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        //        profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant : 12).isActive = true
        //        profileImageView.leftAnchor.constraint(equalTo: wordLable.rightAnchor, constant : 10).isActive = true
        //        profileImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        //        profileImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        //        profileImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        //
        //        wordLable.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        //        wordLable.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        //        wordLable.rightAnchor.constraint(equalTo: profileImageView.leftAnchor, constant: -10).isActive = true
        //        wordLable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        //
        //        usernameLabel.topAnchor.constraint(equalTo: wordLable.bottomAnchor, constant: 10).isActive = true
        //        usernameLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        //        usernameLabel.rightAnchor.constraint(equalTo: profileImageView.leftAnchor, constant: -10).isActive = true
        //
        //        bioTextView.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 10).isActive = true
        //        bioTextView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        //        bioTextView.rightAnchor.constraint(equalTo: profileImageView.leftAnchor, constant: -10).isActive = true
        //        bioTextView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        //        bioTextView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
