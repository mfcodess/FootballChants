//
//  TeamTableViewCell.swift
//  Football Chants
//
//  Created by Max on 29.09.2024.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    
    static let cellId = "TeamTableViewCell"
    
    //MARK: - UI
    
    private lazy var conteinerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var contentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 4
        stackView.axis = .vertical
        
        return stackView
    }()
    
    private lazy var badgeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    private lazy var playbackButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        
        return button
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var foundedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 12, weight: .light)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var jobLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 10, weight: .light)
        label.textColor = .white
        
        return label
    }()
    
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.textColor = .white
        
        return label
    }()
    
    func configure() {
        conteinerView.backgroundColor = TeamType.arsenal.background
        
        badgeImageView.image = TeamType.arsenal.badge
        playbackButton.setImage(UIImage(systemName: "play.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32)), for: .normal)
        
        nameLabel.text = "Arsenal"
        foundedLabel.text = "1888"
        jobLabel.text = "Current Manager: Mikel Arteta"
        infoLabel.text = "Arsenal is a football club based in London, England. It was founded in 1888 and is one of the oldest football clubs in the world."
        
        self.contentView.addSubview(conteinerView)
        
        conteinerView.addSubview(contentStackView)
        conteinerView.addSubview(badgeImageView)
        conteinerView.addSubview(playbackButton)
        
        contentStackView.addArrangedSubview(nameLabel)
        contentStackView.addArrangedSubview(foundedLabel)
        contentStackView.addArrangedSubview(jobLabel)
        contentStackView.addArrangedSubview(infoLabel)
        
        NSLayoutConstraint.activate([
            conteinerView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            conteinerView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            conteinerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            conteinerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            
            badgeImageView.heightAnchor.constraint(equalToConstant: 50),
            badgeImageView.widthAnchor.constraint(equalToConstant: 50),
            badgeImageView.topAnchor.constraint(equalTo: contentStackView.topAnchor),
            badgeImageView.leadingAnchor.constraint(equalTo: conteinerView.leadingAnchor, constant: 8),
            
            contentStackView.topAnchor.constraint(equalTo: conteinerView.topAnchor, constant: 16),
            contentStackView.bottomAnchor.constraint(equalTo: conteinerView.bottomAnchor, constant: -16),
            contentStackView.leadingAnchor.constraint(equalTo: badgeImageView.trailingAnchor, constant: 8),
            contentStackView.trailingAnchor.constraint(equalTo: playbackButton.leadingAnchor, constant: 8),
            
            playbackButton.heightAnchor.constraint(equalToConstant: 44),
            playbackButton.widthAnchor.constraint(equalToConstant: 44),
            playbackButton.trailingAnchor.constraint(equalTo: conteinerView.trailingAnchor, constant: -8),
            playbackButton.centerYAnchor.constraint(equalTo: conteinerView.centerYAnchor)
            
            
        ])
    }
}
