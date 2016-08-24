//
//  Paso2ViewController.swift
//  PizzaApp
//
//  Created by Jesus Manuel Porras on 8/21/16.
//  Copyright © 2016 Jesus Manuel Porras. All rights reserved.
//

import UIKit

class Paso2: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var Orden = Pizza?()
    
    @IBOutlet weak var masa: UIPickerView!
   
    
    //----------PICKER-------------------
    let masas = ["Delgada", "Crujiente", "Gruesa"]
    
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView)->Int{ //Componentes del Picker
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int { //Elementos
        return masas.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? { //Texto picker
        return masas[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if masas[row] == "Ninguno"
            { Orden?.tipoMasa = masas[0]}
        else
            { Orden?.tipoMasa = masas[row]}
        
    }
    
    //----------Botón-----------------------------
    @IBAction func ok2(sender: AnyObject) {
    }
    //---------------Ciclo de vida -------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.masa.delegate = self
        self.masa.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Paso3
        if Orden?.tipoMasa == "Ninguno"
            {Orden?.tipoMasa = masas[0]}
        sigVista.Orden = self.Orden
    }
}
