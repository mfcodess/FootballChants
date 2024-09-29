//
//  TeamTableViewCell.swift
//  Football Chants
//
//  Created by Max on 29.09.2024.
//

import UIKit

protocol TeamTableViewCellDelegate: AnyObject {
    func didTapPlayBack(for team: Team)
}

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
    
    private weak var delegate: TeamTableViewCellDelegate?
    private var team: Team?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        conteinerView.layer.cornerRadius = 10
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.team = nil
        self.delegate = nil
        self.conteinerView.subviews.forEach { $0.removeFromSuperview() }
    }
    
    func configure(with item: Team, delegate: TeamTableViewCellDelegate) {
        
        self.team = item
        self.delegate = delegate
        
        playbackButton.addTarget(self, action: #selector(didTapPlayback), for: .touchUpInside)
        
        conteinerView.backgroundColor = item.id.background
        
        badgeImageView.image = item.id.badge
        playbackButton.setImage(item.isPlaying ? Assets.pause : Assets.play, for: .normal)
        
        nameLabel.text = item.name
        foundedLabel.text = item.founded
        jobLabel.text = "Current \(item.manager.job.rawValue): \(item.manager.name)"
        infoLabel.text = item.info
        
        self.contentView.addSubview(conteinerView)
        
        conteinerView.addSubview(contentStackView)
        conteinerView.addSubview(badgeImageView)
        conteinerView.addSubview(playbackButton)
        
        contentStackView.addArrangedSubview(nameLabel)
        contentStackView.addArrangedSubview(foundedLabel)
        contentStackView.addArrangedSubview(jobLabel)
        contentStackView.addArrangedSubview(infoLabel)
        
        NSLayoutConstraint.activate([
            conteinerView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            conteinerView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),
            conteinerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8),
            conteinerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8),
            
            badgeImageView.heightAnchor.constraint(equalToConstant: 50),
            badgeImageView.widthAnchor.constraint(equalToConstant: 50),
            badgeImageView.topAnchor.constraint(equalTo: contentStackView.topAnchor),
            badgeImageView.leadingAnchor.constraint(equalTo: conteinerView.leadingAnchor, constant: 8),
            
            contentStackView.topAnchor.constraint(equalTo: conteinerView.topAnchor, constant: 16),
            contentStackView.bottomAnchor.constraint(equalTo: conteinerView.bottomAnchor, constant: -16),
            contentStackView.leadingAnchor.constraint(equalTo: badgeImageView.trailingAnchor, constant: 8),
            contentStackView.trailingAnchor.constraint(equalTo: playbackButton.leadingAnchor, constant: -8),
            
            playbackButton.heightAnchor.constraint(equalToConstant: 44),
            playbackButton.widthAnchor.constraint(equalToConstant: 44),
            playbackButton.trailingAnchor.constraint(equalTo: conteinerView.trailingAnchor, constant: -8),
            playbackButton.centerYAnchor.constraint(equalTo: conteinerView.centerYAnchor)
            
            
        ])
    }
    
    @objc func didTapPlayback() {
        if let team = team {
            delegate?.didTapPlayBack(for: team)
        }
    }
}
