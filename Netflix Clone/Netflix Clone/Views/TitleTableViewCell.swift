//
//  TitleTableViewCell.swift
//  Netflix Clone
//
//  Created by Kant on 2022/02/23.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    static let identifier = "TitleTableViewCell"
    
    private let playTitleButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "play.circle", withConfiguration: UIImage.SymbolConfiguration(pointSize: 25))
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let titlesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let titlesPosterdUIImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titlesPosterdUIImageView)
        contentView.addSubview(titlesLabel)
        contentView.addSubview(playTitleButton)
        
        applyConstraints()
    }
    
    private func applyConstraints() {
        let titlesPosterdUIImageViewConstraints = [
            titlesPosterdUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titlesPosterdUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            titlesPosterdUIImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            titlesPosterdUIImageView.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        let titlesLabelConstraints = [
            titlesLabel.leadingAnchor.constraint(equalTo: titlesPosterdUIImageView.trailingAnchor, constant: 20),
            titlesLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ]
        
        let playTitleButtonConstraints = [
            playTitleButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            playTitleButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(titlesPosterdUIImageViewConstraints)
        NSLayoutConstraint.activate(titlesLabelConstraints)
        NSLayoutConstraint.activate(playTitleButtonConstraints)
    }
    
    public func configure(with model: TitleViewModel) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model.posterURL)") else { return }
        titlesPosterdUIImageView.sd_setImage(with: url, completed: nil)
        titlesLabel.text = model.titleName
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
