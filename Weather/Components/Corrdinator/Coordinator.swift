//
//  Coordinator.swift
//  Weather
//
//  Created by Adilet on 25/4/23.
//

import UIKit

protocol Coordinator {
    
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
