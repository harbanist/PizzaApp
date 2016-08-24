//
//  Confirmacion.swift
//  PizzaApp
//
//  Created by Jesus Manuel Porras on 8/21/16.
//  Copyright © 2016 Jesus Manuel Porras. All rights reserved.
//

import UIKit

class Confirmacion: UIViewController {

    @IBOutlet weak var txtTamano: UILabel!
    @IBOutlet weak var txtMasa: UILabel!
    @IBOutlet weak var txtQueso: UILabel!
    @IBOutlet weak var txtIngredientes: UILabel!
    var Orden = Pizza?()
    
    func cadenaIngredientes(i1:String,i2:String,i3:String,i4:String,i5:String)->String{
        var cad: String = ""
        if i1 != "Nada" { cad+=i1 }
        if i2 != "Nada" { cad+=", \(i2)" }
        if i3 != "Nada" { cad+=", \(i3)" }
        if i4 != "Nada" { cad+=", \(i4)" }
        if i5 != "Nada" { cad+=", \(i5)" }
        if cad == "" { cad = "Ninguno" }
        return cad
    }
    
    
    //---------------Ciclo de vida de vistas--------------------
    override func viewWillAppear(animated: Bool) { //prepara el resultado antes de mostrar pantalla
        txtTamano.text = Orden?.tamano
        txtMasa.text = Orden?.tipoMasa
        txtQueso.text = Orden?.tipoQueso
        txtIngredientes.text = cadenaIngredientes((Orden?.ingrediente1)!, i2: (Orden?.ingrediente2)!, i3: (Orden?.ingrediente3)!, i4: (Orden?.ingrediente4)!, i5: (Orden?.ingrediente5)!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
