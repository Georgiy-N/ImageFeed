import UIKit

final class ProfileViewController: UIViewController {
    private let avatarImage = UIImageView()
    private let nameLabel = UILabel()
    private let nicknameLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let logOutButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureAppearance()
        addViews()
        constraintViews()
    }
    
}

extension ProfileViewController {
    private func configureAppearance() {
        
        view.backgroundColor = Res.Colors.background
        
        avatarImage.image = Res.Images.Profil.mockPhoto
        
        nameLabel.font = UIFont.systemFont(ofSize: 21, weight: .bold)
        nameLabel.textColor = .white
        nameLabel.text = Res.Strings.Profile.name
        
        nicknameLabel.font = UIFont.systemFont(ofSize: 13)
        nicknameLabel.textColor = Res.Colors.lableGrey
        nicknameLabel.text = Res.Strings.Profile.nickname
        
        descriptionLabel.font = UIFont.systemFont(ofSize: 13)
        descriptionLabel.textColor = .white
        descriptionLabel.text = Res.Strings.Profile.description
        
        logOutButton.setImage(Res.Images.Profil.logOut, for: .normal)
    }
    
    private func addViews() {
        view.setupView(avatarImage)
        view.setupView(nameLabel)
        view.setupView(nicknameLabel)
        view.setupView(descriptionLabel)
        view.setupView(logOutButton)
    }
    
    private func constraintViews() {
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 76),
            avatarImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            nameLabel.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImage.leadingAnchor),
            
            nicknameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            nicknameLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: nicknameLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: nicknameLabel.leadingAnchor),
            
            logOutButton.heightAnchor.constraint(equalToConstant: 22),
            logOutButton.widthAnchor.constraint(equalToConstant: 20),
            logOutButton.centerYAnchor.constraint(equalTo: avatarImage.centerYAnchor),
            logOutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -26)
        ])
    }
}
