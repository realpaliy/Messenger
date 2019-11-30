//
//  ContactsCell.swift
//  mChat
//
//  Created by Vitaliy Paliy on 11/17/19.
//  Copyright © 2019 PALIY. All rights reserved.
//

import UIKit

class ContactsCell: UITableViewCell {
    
    var cellBackground = UIView()
    var profileImage = UIImageView()
    var friendName = UILabel()
    var friendEmail = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        addSubview(cellBackground)
        cellBackground.addSubview(profileImage)
        cellBackground.addSubview(friendName)
        cellBackground.addSubview(friendEmail)
        setupCellBackground()
        setupImage()
        setupNameLabel()
        setupEmailLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCellBackground(){
        cellBackground.translatesAutoresizingMaskIntoConstraints = false
        cellBackground.backgroundColor = UIColor(displayP3Red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        cellBackground.layer.cornerRadius = 8
        cellBackground.layer.shadowRadius = 10
        cellBackground.layer.shadowOpacity = 0.2
        cellBackground.layer.shadowColor = UIColor.black.cgColor
        cellBackground.alpha = 0.9
        let constraints = [
            cellBackground.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            cellBackground.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            cellBackground.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            cellBackground.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupImage(){
        profileImage.contentMode = .scaleAspectFill
        profileImage.layer.cornerRadius = 30
        profileImage.layer.masksToBounds = true
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            profileImage.centerYAnchor.constraint(equalTo: cellBackground.centerYAnchor),
            profileImage.leadingAnchor.constraint(equalTo: cellBackground.leadingAnchor, constant: 12),
            profileImage.heightAnchor.constraint(equalToConstant: 60),
            profileImage.widthAnchor.constraint(equalToConstant: 60)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupEmailLabel(){
        friendEmail.numberOfLines = 0
        friendEmail.adjustsFontSizeToFitWidth = true
        friendEmail.textColor = .gray
        friendEmail.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            friendEmail.topAnchor.constraint(equalTo: friendName.bottomAnchor, constant: 0),
            friendEmail.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 15)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupNameLabel(){
        friendName.textColor = .black
        friendName.numberOfLines = 0
        friendName.adjustsFontSizeToFitWidth = true
        friendName.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            friendName.topAnchor.constraint(equalTo: cellBackground.topAnchor, constant: 10),
            friendName.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 15)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
}
