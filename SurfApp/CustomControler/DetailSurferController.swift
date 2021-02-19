//
//  DetailSurferController.swift
//  SurfApp
//
//  Created by Florian  on 09/02/2021.
//

import UIKit

class DetailSurferController: UIViewController {

    
    
    @IBOutlet weak var BgImage: UIImageView!
    @IBOutlet weak var ProfilImage: RoundedImage!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var NationalityLabel: UILabel!
    
    var surfer : Surfer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BgImage.from(surfer.bg)
        ProfilImage.from(surfer.ImageProfil)
        NameLabel.text = surfer.name
        NationalityLabel.text = surfer.nationality
    }
    

   

}
