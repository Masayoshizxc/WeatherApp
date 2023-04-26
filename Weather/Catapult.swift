//
//  Catapult.swift
//  Weather
//
//  Created by Adilet on 22/4/23.
//

import Foundation
import UIKit

struct Catapult: Codable {
    let success: Bool
    let status: Int
    let info: Info
    let response: [String: Int]
}

// MARK: - Info
struct Info: Codable {
    let m: Int
    let t: Double
    let c: Int
    let tick: Double
    let ns: Int
}
