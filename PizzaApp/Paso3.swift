//
//  Paso3.swift
//  PizzaApp
//
//  Created by Jesus Manuel Porras on 8/21/16.
//  Copyright © 2016 Jesus Manuel Porras. All rights reserved.
//
import UIKit

class Paso3: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var Orden = Pizza?()
    @IBOutlet weak var queso: UIPickerView!
    //----------PICKER-------------------
    let quesos = ["Sin queso","Mozarela", "Cheddar", "Parmesano"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView)->Int{ //Componentes del Picker
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int { //Elementos
        return quesos.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? { //Texto picker
        return quesos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Orden!.tipoQueso = quesos[row]
        if quesos[row] == "Ninguno"
            { Orden?.tipoQueso = quesos[0]}
        else
            { Orden?.tipoQueso = quesos[row]}
    }
    
    //----------Botón-----------------------------
    @IBAction func ok3(sender: AnyObject) {
    }

   //---------------Ciclo de vida -------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.queso.delegate = self
        self.queso.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Paso4
        if Orden?.tipoQueso == "Ninguno"
            {Orden?.tipoQueso = quesos[0]}
        sigVista.Orden = self.Orden
    }
}
