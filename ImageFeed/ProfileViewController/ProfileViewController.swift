import UIKit

final class ProfileViewController: UIViewController {
    

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var logOutButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureAppearance()
    }
    
}

extension ProfileViewController {
    func configureAppearance() {
        
        avatarImage.image = Res.Images.Profil.mockPhoto
        logOutButton.setImage(Res.Images.Profil.logOut, for: .normal)
        
        nameLabel.font = UIFont.systemFont(ofSize: 21, weight: .bold)
        nameLabel.textColor = .white
        nameLabel.text = Res.Strings.Profile.name
        
        nicknameLabel.font = UIFont.systemFont(ofSize: 13)
        nicknameLabel.textColor = Res.Colors.lableGrey
        nicknameLabel.text = Res.Strings.Profile.nickname
        
        descriptionLabel.font = UIFont.systemFont(ofSize: 13)
        descriptionLabel.textColor = .white
        descriptionLabel.text = Res.Strings.Profile.description

    }
}
