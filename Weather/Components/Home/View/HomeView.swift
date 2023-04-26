//
//  HomeViewController.swift
//  Weather
//
//  Created by Adilet on 25/4/23.
//

import UIKit
import SnapKit

class HomeView: UIViewController {
    var coordinator: MainCoordinator?
    
    private lazy var authIcon: UIImageView = {
        let i = UIImageView()
        i.image = UIImage(named: "auth")
        
        return i
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews()
        setupConstraints()
        
    }
    
}

extension HomeView {
    
    func setupSubviews() {
        view.addSubview(authIcon)
    }
    
    func setupConstraints() {
        authIcon.snp.makeConstraints{make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(200)
            make.width.equalTo(view.frame.size.width/3)
            make.height.equalTo(authIcon.snp.width)
        }
    }
}
