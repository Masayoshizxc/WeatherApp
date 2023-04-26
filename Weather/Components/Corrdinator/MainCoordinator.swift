//
//  MainCoordinator.swift
//  Weather
//
//  Created by Adilet on 25/4/23.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeView()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
}
