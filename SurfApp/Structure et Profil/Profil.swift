//
//  Profil.swift
//  SurfApp
//
//  Created by Florian  on 08/02/2021.
//

import Foundation

struct Surfer {
    var name : String
    var ImageProfil : String{
        return name + "-profile"
    }
    var bg : String {
        return name + "-bg"
    }
    var surname : String
    var nationality : String
}
