//
//  FormulaireController.swift
//  SurfApp
//
//  Created by Florian  on 17/02/2021.
//

import UIKit


struct DataTest {
    var name : String
    var surname : String
    var age : Int
    var gender : Bool
    var situation : Int
    var date : Date
    var weight : Double
}

class FormulaireController: UIViewController {
    
    //Outlet de la page Formulaire.
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var SurnametextField: UITextField!
    @IBOutlet weak var AgeStepper: UIStepper!
    @IBOutlet weak var AgeLabel: UILabel!
    @IBOutlet weak var GenderSwitch: UISwitch!
    @IBOutlet weak var GenderLabel: UILabel!
    @IBOutlet weak var SituationPicker: UISegmentedControl!
    @IBOutlet weak var DatePicker: UIDatePicker!
    @IBOutlet weak var WeightLabel: UILabel!
    @IBOutlet weak var WeightSlider: UISlider!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(close)))
        NameTextField.delegate = self
        SurnametextField.delegate = self
        WeightSlider.value = 100
        updateLabel()
    }
    
    
    
    func updateLabel(){
        GenderLabel.text = GenderSwitch.isOn ? "Homme" : "Femme"
        AgeLabel.text = "j ai \(Int(AgeStepper.value)) ans"
        let castWeigtValue = String(format: "%.2f", WeightSlider.value)
        WeightLabel.text = "je fais \(castWeigtValue) kg"
    }
    
    @objc func close(){
        view.endEditing(true)
    }
    
    
    @IBAction func StepperChanged(_ sender: UIStepper) {
        updateLabel()
    }
    
    @IBAction func SwitchChanged(_ sender: UISwitch) {
        updateLabel()
    }
    
    @IBAction func PickerChanged(_ sender: UISegmentedControl) {
    }
    
    @IBAction func DatePicked(_ sender: UIDatePicker) {
        print(DatePicker.date)
    }
    
    
    
    @IBAction func SliderChanged(_ sender: UISlider) {
        updateLabel()
    }
    
    
    @IBAction func ValidationFormulaireButton(_ sender: Any) {
        if let VerifFirstTextField = NameTextField.text, VerifFirstTextField != ""{
            if let VerifSecondTextField = SurnametextField.text, VerifSecondTextField != ""{
            
                let Profil = DataTest(
                    name: VerifFirstTextField,
                    surname: VerifSecondTextField,
                    age: Int(AgeStepper.value),
                    gender: GenderSwitch.isOn,
                    situation: SituationPicker.selectedSegmentIndex,
                    date: DatePicker.date,
                    weight: Double(WeightSlider.value))
                print("Dans l ordre d apparition name -> \(Profil.name), surnom -> \(Profil.surname), la date est la suivante -> \(Profil.date), la situation est a l index -> \(Profil.situation), le genre de la personne est la suivante \(Profil.gender), l age est de \(Profil.age), le poids est de \(Profil.weight)")
            }else{
                print("pas de surnom")
            }
        }
        else{
            print("pas de Nom")
        }
    }
    
    
}


extension FormulaireController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        close()
        return true
    }
}

