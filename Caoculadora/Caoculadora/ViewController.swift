//
//  ViewController.swift
//  Caoculadora
//
//  Created by Francisco Soares Neto on 08/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var anosTextField: UITextField!
    @IBOutlet var mesesTextField: UITextField!
    
    @IBOutlet var pequenoButton: UIButton!
    @IBOutlet var medioButton: UIButton!
    @IBOutlet var grandeButton: UIButton!
  
    @IBAction func tocou(_ sender: UIButton) {
        let anos = transformaAnosCaninosEmHumanos()
        let meses = transformaMesesCaninosEmHumanos()
        
        if sender == pequenoButton {
            exibeResultado(de: anos + meses)
        } else if sender == medioButton {
            exibeResultado(de: anos + meses + 3)
        }
        else {
            exibeResultado(de: anos + meses + 7)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func transformaAnosCaninosEmHumanos() -> Int {
        // Lê o que está escrito no text field de anos
        let anosCaninos: String = anosTextField.text!
        
        // Transformar texto em Int
        let anosCaninosInt: Int
        anosCaninosInt = Int(anosCaninos)!
        
        // Multiplica o valor escrito em anos por 7
        let anosHumanosInt = anosCaninosInt * 7
        
        return anosHumanosInt
    }
    
    func transformaMesesCaninosEmHumanos() -> Int {
        // Lê o que está escrito no text field de meses
        let mesesCaninos: String = mesesTextField.text!
        
        // Transformar texto em Int
        let mesesCaninosInt: Int
        mesesCaninosInt = Int(mesesCaninos)!
        
        // Multiplica o valor escrito em meses por 7 / 12
        let mesesHumanosInt = mesesCaninosInt * 7 / 12
        
        return mesesHumanosInt
    }
    
    func somaAnosTransformados() {
        // soma anos humanos + meses humanos
    }
    
    func escondeComponentes() {
        // Esconde os labels, botões e text fields relativos a anos, meses e porte
    }
    
    func exibeResultado(de valor: Int) {
        print(valor)
        // Escreve na label de resultados o valor calculado em anos
        // Exibe os labels de resultado e o botão de recãocular
    }

}
