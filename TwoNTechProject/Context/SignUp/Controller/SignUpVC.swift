//
//  SignUpVC.swift
//  TwoNTechProject
//
//  Created by Musa Adıtepe on 21.11.2024.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var infoLabelTwo: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var roundedCornerViews: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var image: UIImageView!
    let router: Routable = Router()
    @IBOutlet weak var buttunnew: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBigLabel()
        setupDetailLabel()
        setupTextField(emailTextField, iconName: "person.fill", placeholder: "Email ")
        setupTextField(passwordTextField, iconName: "lock.fill", placeholder: "Password", isSecure: true)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        roundedCornerViews.layer.cornerRadius = roundedCornerViews.frame.height/20
        roundedCornerViews.translatesAutoresizingMaskIntoConstraints = true
        
    }
    @IBAction func goToLogin(_ sender: UIButton) {
        router.navigate(to: .login, from: self, source: "SignUpVC")
    }
    @IBAction func goToHome(_ sender: UIButton) {
        router.navigate(to: .home, from: self, source: "SignUpVC")
    }
    
    func setupTextField(_ textField: UITextField, iconName: String, placeholder: String, isSecure: Bool = false) {
        textField.layer.cornerRadius = 12
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = 0.2
        textField.layer.borderColor = UIColor.systemTeal.cgColor
        textField.backgroundColor = UIColor.systemBackground
        let iconImageView = UIImageView(image: UIImage(systemName: iconName))
        iconImageView.tintColor = .systemTeal
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.frame = CGRect(x: 10, y: 10, width: 20, height: 20)
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        leftView.addSubview(iconImageView)
        textField.leftView = leftView
        textField.leftViewMode = .always
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [
                .foregroundColor: UIColor.lightGray,
                .font: UIFont.systemFont(ofSize: 14)
            ]
        )
        textField.isSecureTextEntry = isSecure
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .lightGray
    }
    func setupBigLabel() {
        infoLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        infoLabel.textColor = UIColor.systemTeal
        infoLabel.layer.shadowColor = UIColor.white.withAlphaComponent(0.2).cgColor
        infoLabel.layer.shadowOpacity = 0.7
        infoLabel.layer.shadowRadius = 5
        infoLabel.layer.shadowOffset = CGSize(width: 3, height: 3)
        infoLabel.textAlignment = .center
        infoLabel.numberOfLines = 0
        infoLabel.text = "Welcome to the New TN Project! 🚀"
    }
    func setupDetailLabel() {
        infoLabelTwo.font = UIFont.systemFont(ofSize: 10, weight: .bold)
        infoLabelTwo.textColor = UIColor.lightGray
        infoLabelTwo.layer.shadowColor = UIColor.white.withAlphaComponent(0.2).cgColor
        infoLabelTwo.layer.shadowOpacity = 0.7
        infoLabelTwo.layer.shadowRadius = 5
        infoLabelTwo.layer.shadowOffset = CGSize(width: 3, height: 3)
        infoLabelTwo.textAlignment = .left
        infoLabelTwo.numberOfLines = 0
        infoLabelTwo.text = "Geçerli mail ve şifreniz ile buradan giriş yapabilirsiniz tasarımsal uygulamanın Auth kısmında son ekrandasınız.👋🏻"
    }
}
