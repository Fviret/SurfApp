//
//  SurfController.swift
//  SurfApp
//
//  Created by Florian  on 09/02/2021.
//

import UIKit

class SurfController: UIViewController {
    
    
    @IBOutlet weak var RankingLabel: UILabel!
    @IBOutlet weak var SurferIV: RoundedImage!
    @IBOutlet weak var Surfername: UILabel!
    
    var MyIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSurfer()
        SurferIV.isUserInteractionEnabled = true
        SurferIV.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(surferTap)))
    }
    
    func setupSurfer(){
        let surfer = surfers()[MyIndex]
        RankingLabel.text = "Classement : \(MyIndex + 1)"
        SurferIV.from(surfer.ImageProfil)
        Surfername.text = surfer.name + " " + surfer.surname
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "Detail" else { return }
        guard let next = segue.destination as? DetailSurferController else { return }
        next.surfer = surfers()[MyIndex]
    }
    
   @objc func surferTap(){
        performSegue(withIdentifier: "Detail", sender: nil)
    }
    
    @IBAction func PreviousSurfer(_ sender: Any) {
        if MyIndex != 0{
            MyIndex -= 1
            setupSurfer()
        }
    }
    
    @IBAction func NextSurfer(_ sender: Any) {
        if MyIndex < surfers().count - 1{
            MyIndex += 1
            setupSurfer()
        }
    }
    
}
