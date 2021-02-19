//
//  ViewController.swift
//  SurfApp
//
//  Created by Florian  on 08/02/2021.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var BoutonStyle: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BoutonStyle.layer.cornerRadius = 10
        
    }


}

