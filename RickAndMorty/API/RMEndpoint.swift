//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Liee Marie on 5/07/24.
//

import Foundation

/// Representes unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
    
    
}

