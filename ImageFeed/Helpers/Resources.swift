import UIKit

enum Res {
    enum Colors {
        static let background = UIColor(hexString: "#1A1B22")
        
        static let lableGrey = UIColor(hexString: "#AEAFB4")
        
        static let buttonRed = UIColor(hexString: "#F56B6C")
    }
    
    enum Images {
        enum Profil {
            static let defaultAvatar = UIImage(named: "avatar")
            static let logOut = UIImage(named: "logout")
            static let mockPhoto = UIImage(named: "photo_ekaterina")
        }
        
        enum TabBar {
            static let imagesList = UIImage(named: "tab_editorial_active")
            static let profile = UIImage(named: "tab_profile_active")
        }
    }
    
    enum Strings {
        enum Profile {
            static let name = "Екатерина Новикова"
            static let nickname = "@ekaterina_nov"
            static let description = "Hello, world!"
        }
    }
}
