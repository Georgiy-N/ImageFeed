import UIKit

final class ProfileViewController: UIViewController {
    private lazy var avatarImage = UIImageView()
    private lazy var nameLabel = UILabel()
    private lazy var nicknameLabel = UILabel()
    private lazy var descriptionLabel = UILabel()
    private lazy var logOutButton = UIButton()
    
    
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
        
        avatarImage.image = Res.Images.Profile.mockPhoto
        
        nameLabel.font = UIFont.systemFont(ofSize: 21, weight: .bold)
        nameLabel.textColor = .white
        nameLabel.text = Res.Strings.Profile.name
        
        nicknameLabel.font = UIFont.systemFont(ofSize: 13)
        nicknameLabel.textColor = Res.Colors.lableGrey
        nicknameLabel.text = Res.Strings.Profile.nickname
        
        descriptionLabel.font = UIFont.systemFont(ofSize: 13)
        descriptionLabel.textColor = .white
        descriptionLabel.text = Res.Strings.Profile.description
        
        logOutButton.setImage(Res.Images.Profile.logOut, for: .normal)
    }
    
    private func addViews() {
        [avatarImage, nameLabel, nicknameLabel, descriptionLabel, logOutButton].map {self.view.setupView($0)}
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
