//
//  RoundedImage.swift
//  SurfApp
//
//  Created by Florian  on 09/02/2021.
//

import UIKit

class RoundedImage: UIImageView {

    override init(frame: CGRect){
        super.init(frame: frame)
        setupRounded()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupRounded()
    }
    
    func setupRounded() {
        layer.cornerRadius = frame.height / 2
        layer.borderWidth = 3
        layer.borderColor = UIColor.systemBackground.cgColor
    }
}
