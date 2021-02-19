//
//  NormalisationCharactere.swift
//  SurfApp
//
//  Created by Florian  on 09/02/2021.
//

import UIKit

extension UIImageView{
    func from(_ imageString : String){
        let image = UIImage(named: imageString.lowercased())
        self.image = image
    }
}
