//
//  LandingVC.swift
//  TwoNTechProject
//
//  Created by Musa Adıtepe on 21.11.2024.
//

import UIKit

class LandingVC: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var infoLabelTwo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBigLabel()
        setupDetailLabel()
    }
    let router: Routable = Router()
    @IBAction func goToSignUp(_ sender: UIButton) {
        router.navigate(to: .signUp, from: self, source: "LandingVC")
    }
    @IBAction func goToLogin(_ sender: UIButton) {
        router.navigate(to: .login, from: self, source: "LandingVC")
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
        infoLabelTwo.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        infoLabelTwo.textColor = UIColor.lightGray
        infoLabelTwo.layer.shadowColor = UIColor.white.withAlphaComponent(0.2).cgColor
        infoLabelTwo.layer.shadowOpacity = 0.7
        infoLabelTwo.layer.shadowRadius = 5
        infoLabelTwo.layer.shadowOffset = CGSize(width: 3, height: 3)
        infoLabelTwo.textAlignment = .left
        infoLabelTwo.numberOfLines = 0
        infoLabelTwo.text = "Geçerli mail ve şifreniz ile buradan giriş yapabilirsiniz tasarımsal uygulamanın Auth kısmında son ekrandasınız. Geçerli mail ve şifreniz ile buradan giriş yapabilirsiniz tasarımsal uygulamanın Auth kısmında son ekrandasınız.Geçerli mail ve şifreniz ile buradan giriş yapabilirsiniz tasarımsal uygulamanın Auth kısmında son ekrandasınız.👋🏻"
    }
    
}
