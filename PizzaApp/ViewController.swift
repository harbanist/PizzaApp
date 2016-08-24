//
//  ViewController.swift
//  PizzaApp
//
//  Created by Jesus Manuel Porras on 8/21/16.
//  Copyright © 2016 Jesus Manuel Porras. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate { // Se agrega UIPickerViewDataSource, UIPickerViewDelegate

    
    //----------PICKER-------------------
    @IBOutlet weak var selTamano: UIPickerView!
    
    
    
    let tamanos = ["Chica", "Mediana", "Grande"]
    
    let Orden = Pizza(tamano: "Ninguno", tipoQueso: "Ninguno", tipoMasa: "Ninguno", ingrediente1: "Nada", ingrediente2: "Nada", ingrediente3: "Nada", ingrediente4: "Nada", ingrediente5: "Nada")
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView)->Int{ //Componentes del Picker
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int { //Elementos
        return tamanos.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? { //Texto picker
        return tamanos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if tamanos[row] == "Ninguno"
            {Orden.tamano = tamanos[0]}
        else
            { Orden.tamano = tamanos[row]}
    }
    
    //----------Botón-----------------------------
    @IBAction func ok1(sender: AnyObject) {
        
    }
    //----------------SEGUE-------------------------------
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Paso2
        if Orden.tamano == "Ninguno"
            {Orden.tamano = tamanos[0]}
        
        sigVista.Orden = self.Orden

    }

     //---------------Ciclo de vida -------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.selTamano.delegate = self
        self.selTamano.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

