////
////  HeaderCell.swift
////  TwitterDemo
////
////  Created by Arshad Kazi on 30/08/18.
////  Copyright © 2018 Arshad Kazi. All rights reserved.
////

import UIKit

class HeaderCell: UICollectionViewCell {

    let headerLabel : UILabel = {
        let header = UILabel()
        header.translatesAutoresizingMaskIntoConstraints = false
        header.backgroundColor = .blue
        return header
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(headerLabel)
        headerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        headerLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        headerLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        headerLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        headerLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


