//
//  CharacterViewController.swift
//  RickAndMorty
//
//  Created by Liee Marie on 5/07/24.
//

import UIKit

/// Controller to show and search for Character
final class CharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            
            ]
        )
        print(request.url)
        
        RMService.shared.execute(request,
                                 expecting: RMCharacter.self, completion: {result in
            
        })

    }

}
