import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var gradientView: UIView!
}

extension ImagesListCell {
    override func layoutSubviews() {
        super.layoutSubviews()
        let gradient = CAGradientLayer()
        gradientView.layer.cornerRadius = 20
        let color1 = UIColor(red: 26/255, green: 27/255, blue: 34/255, alpha: 0)
        let color2 = UIColor(red: 26/255, green: 27/255, blue: 34/255, alpha: 0.2)
        gradient.colors = [color1.cgColor, color2.cgColor]
        gradient.locations = [0, 1]
        gradient.frame = CGRect(x: 0,
                                y: 0,
                                width: frame.size.width,
                                height: gradientView.frame.size.height)
        gradientView.layer.addSublayer(gradient)
    }
}

