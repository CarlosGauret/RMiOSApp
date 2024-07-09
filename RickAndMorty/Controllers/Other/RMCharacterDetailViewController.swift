//
//  RMCharacaterDetailViewController.swift
//  RickAndMorty
//
//  Created by Liee Marie on 8/07/24.
//

import UIKit



/// Controller to show about single character
final class RMCharacterDetailViewController: UIViewController {
    
    private let viewModel: RMCharacterDetailViewViewModel
    
    /// cuando presiono sobre el personaje aparece el nombre como titulo en otra pantalla
    
    
    init(viewModel: RMCharacterDetailViewViewModel ){
        self.viewModel = viewModel
        super.init(nibName: nil,bundle: nil)
    }
    
    required init? (coder: NSCoder){
        fatalError("Unsupported")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = viewModel.title

    }
    

}
