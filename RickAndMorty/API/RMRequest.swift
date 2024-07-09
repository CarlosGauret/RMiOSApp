//
//  Request.swift
//  RickAndMorty
//
//  Created by Liee Marie on 5/07/24.
//

import Foundation

/// Object that represents a singleAPI call
final class RMRequest {

    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
   private let endpoint: RMEndpoint
    
    /// Path components for API, if any
   private let pathComponents: [String]
    
    
    /// Query components for API, if any
   private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }

        
        return string
        
    }
    
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// Desired http Method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: target endpoint
    ///   - pathComponents: collection of Path components
    ///   - queryParameters: collection of query parameters
   public init(
    endpoint: RMEndpoint,
    pathComponents: [String] = [],
    queryParameters: [URLQueryItem] = []
   ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
