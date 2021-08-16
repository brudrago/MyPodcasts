//
//  PodcastCell.swift
//  MyPodcasts
//
//  Created by Bruna Drago on 16/08/21.
//

import UIKit

class PodcastCell: UITableViewCell {
    
    // MARK: - Public Properties
    
    static let identifier = String(describing: PodcastCell.self)
    
    // MARK: - UI Components
    
    private lazy var photoImageView: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "pod1.jpeg")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.9
        label.lineBreakMode = .byTruncatingTail
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.minimumScaleFactor = 0.9
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.lineBreakMode = .byTruncatingTail
        label.font = UIFont.systemFont(ofSize: 14, weight: .light)
        return label
    }()
    
    // MARK: - Inits
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // MARK: - Public Functions
    
    func set(podcast: Podcast) {
        titleLabel.text = podcast.name
        subtitleLabel.text = podcast.author
    }

}

// MARK: - ViewCode Protocol Extension

extension PodcastCell: ViewCodeProtocol {
    
    func setupSubviews() {
        addSubview(photoImageView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
    }
    
    func setupConstraints() {
        photoImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.left.equalToSuperview().offset(20)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.equalTo(photoImageView.snp.right).offset(20)
            make.right.equalToSuperview().inset(20)
        }

        subtitleLabel.snp.makeConstraints { make in
            make.left.equalTo(photoImageView.snp.right).offset(20)
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.right.equalToSuperview().inset(20)
        }
    }
    
    func setupComponents() {
        backgroundColor = .black
    }
}
