//
//  SpotController.swift
//  SurfApp
//
//  Created by Florian  on 09/02/2021.
//

import UIKit

class SpotController: UIViewController {

    @IBOutlet weak var Spotname: UILabel!
    @IBOutlet weak var SpotIV: UIImageView!
    @IBOutlet var Button: [UIButton]!
    
    var spotIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBouton()
        
        // Do any additional setup after loading the view.
    }
    
    func setupBouton(){
        Button.forEach { (button) in
            let spot = spots[button.tag]
            let image = UIImage(named: spot.name.lowercased())
            button.setImage(image, for: .normal)
        }
    }
    
    func setupSpot(){
        Spotname.text = spots[spotIndex].name
        SpotIV.from(spots[spotIndex].name.lowercased())
        
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        spotIndex = sender.tag
        setupSpot()

        
    }
}
