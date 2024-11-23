//
//  Router.swift
//  TwoNTechProject
//
//  Created by Musa Adıtepe on 21.11.2024.
//

import UIKit

enum Destination {
    case landing
    case signUp
    case login
    case home
}

protocol Routable {
    func navigate(to destination: Destination, from viewController: UIViewController, source: String?)
}

class Router: Routable {
    func navigate(to destination: Destination, from viewController: UIViewController, source: String? = nil) {
        var targetVC: UIViewController
        
        switch destination {
        case .landing:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            targetVC = storyboard.instantiateViewController(withIdentifier: "LandingVC") as! LandingVC
            
        case .signUp:
            let storyboard = UIStoryboard(name: "SignUp", bundle: nil)
            targetVC = storyboard.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
            
        case .login:
            let storyboard = UIStoryboard(name: "Login", bundle: nil)
            targetVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        case .home:
            let storyboard = UIStoryboard(name: "Home", bundle: nil)
            targetVC = storyboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        }
        
        if let source = source {
            print("Navigating from \(source) to \(destination)")
        }
        
        if let navigationController = viewController.navigationController {
            navigationController.pushViewController(targetVC, animated: true)
        } else {
            viewController.present(targetVC, animated: true, completion: nil)
        }
    }
}

