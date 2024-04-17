//
//  MainScreenTableViewCell.swift
//  DZ_7_main
//
//  Created by Nikita Shipovskiy on 17/04/2024.
//

import UIKit

class MainScreenTableViewCell: UITableViewCell {
    
    private lazy var viewMain: UIView = {
        $0.backgroundColor = .background
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    private lazy var mainImage: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    private lazy var circleImage: UIImageView = {

        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 30
        $0.widthAnchor.constraint(equalToConstant: 63).isActive = true
        $0.heightAnchor.constraint(equalToConstant: 63).isActive = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    private lazy var nameLabel: UILabel = {
        $0.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        $0.textAlignment = .left
        $0.textColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    private lazy var titleLabel: UILabel = {
        $0.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        $0.textColor = .black
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textAlignment = .left
        return $0
    }(UILabel())
    
    private lazy var descriptionLabel: UILabel = {
        $0.font = UIFont.systemFont(ofSize: 16, weight: .light)
        $0.numberOfLines = 0
        $0.textAlignment = .left
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    private lazy var button: UIButton = {
        $0.setTitle("next", for: .normal)
        $0.setTitleColor( .white, for: .normal)
        $0.backgroundColor = .button
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .light)
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIButton())

    //MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        clipsToBounds = true
    }
    
    func SetupTabel(item: Item) {
        
        
        nameLabel.text = "\(item.name)"
        mainImage.image = UIImage(named: "\(item.mainImage)")
        circleImage.image = UIImage(named: "\(item.circle)")
        titleLabel.text = "\(item.title)"
        descriptionLabel.text = "\(item.description)"
        
        [mainImage, titleLabel, descriptionLabel, button].forEach{
            viewMain.addSubview($0)
        }
        
        [circleImage,nameLabel].forEach{
            mainImage.addSubview($0)
            
        }
    
        addSubview(viewMain)
    
        //MARK: - Constraint
        NSLayoutConstraint.activate([
            viewMain.topAnchor.constraint(equalTo: topAnchor, constant: 22),
            viewMain.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            viewMain.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            viewMain.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            
            
            mainImage.topAnchor.constraint(equalTo: viewMain.topAnchor, constant: 20),
            mainImage.bottomAnchor.constraint(equalTo: viewMain.bottomAnchor, constant: -200),
            mainImage.leadingAnchor.constraint(equalTo: viewMain.leadingAnchor, constant: 20),
            mainImage.trailingAnchor.constraint(equalTo: viewMain.trailingAnchor, constant: -20),
            
            
            nameLabel.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 120),
            nameLabel.bottomAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: -20),
            nameLabel.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -20),
            
            circleImage.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 20),
            circleImage.bottomAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: -120),
            circleImage.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 20),
            
            titleLabel.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 40),
            titleLabel.bottomAnchor.constraint(equalTo: viewMain.bottomAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: viewMain.leadingAnchor, constant: 36),
            titleLabel.trailingAnchor.constraint(equalTo: viewMain.trailingAnchor, constant: -36),
            
            descriptionLabel.topAnchor.constraint(equalTo: viewMain.topAnchor, constant: 212),
            descriptionLabel.leadingAnchor.constraint(equalTo: viewMain.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: viewMain.trailingAnchor, constant: -20),
            descriptionLabel.bottomAnchor.constraint(equalTo: viewMain.bottomAnchor, constant: -50),
            
            button.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant:  -26),
            button.leadingAnchor.constraint(equalTo: viewMain.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: viewMain.trailingAnchor, constant: -20),
            button.bottomAnchor.constraint(equalTo: viewMain.bottomAnchor, constant: -20),
        
            
        ])
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
