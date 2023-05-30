//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by JG.8905 on 5/28/23.
//

import Foundation

/// Object that represents a singlet API call 
final class RMRequest {
    // API Constants
    private struct Constants {
        static let baseUrl = "http://rickandmortyapi.com/api"
    }
    
    /// desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path componets for api
    private let pathComponents: Set<String> 
    
    /// Query componets for api
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let arguementString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += arguementString
        }
        
        return string
    }
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

