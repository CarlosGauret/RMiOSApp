//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Liee Marie on 6/07/24.
//

import UIKit

extension UIView {
    func addSubviews (_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
        
    }
}
