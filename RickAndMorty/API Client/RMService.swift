//
//  RMService.swift
//  RickAndMorty
//
//  Created by JG.8905 on 5/28/23.
//

import Foundation

/// Primary API service object to get Rick and Morty
final class RMService {
    /// Shared singelto instance
    static let shared = RMService()
    
    /// Privtized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///     - request: Request instance
    ///     - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
    }
}
