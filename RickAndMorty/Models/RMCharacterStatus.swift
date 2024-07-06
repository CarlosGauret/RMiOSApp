//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Liee Marie on 5/07/24.
//

import Foundation

enum RMCharacterStatus: String, Codable {
  //('Alive', 'Dead' or 'unknown')
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
