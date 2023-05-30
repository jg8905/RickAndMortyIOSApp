//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by JG.8905 on 5/27/23.
//

import UIKit

/// Controller to show and serach for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "ststus", value: "alive")
            ]
        )
        print(request.url!)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            
        }
    }
    
}
