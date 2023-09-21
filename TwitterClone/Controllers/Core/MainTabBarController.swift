//
//  ViewController.swift
//  TwitterClone
//
//  Created by Mohamed Hany on 12/09/2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    @IBOutlet weak var profileBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavBarImage()
        profileBarButton.image = UIImage(systemName: "person")
    }
    
    private func configureNavBarImage(){
        let size:CGFloat = 36
        let logoImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: size, height: size))
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.image = UIImage(named:"twitterLogo")

        let middleView = UIView(frame: CGRect(x: 0, y: 0, width: size, height: size))
        middleView.addSubview(logoImageView)
        navigationItem.titleView = middleView
    }
    
    @IBAction func didSelectProfileButton(_ sender: UIBarButtonItem) {
        let vc = ProfileViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

