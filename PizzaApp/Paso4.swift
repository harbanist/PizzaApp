//
//  Paso4.swift
//  PizzaApp
//
//  Created by Jesus Manuel Porras on 8/21/16.
//  Copyright © 2016 Jesus Manuel Porras. All rights reserved.
//

import UIKit
class Paso4: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var ingredientes: UIPickerView!
    var Orden = Pizza?()
    
    //----------PICKER-------------------
    let ingredientesArr = [
        ["Jamón", "Pavo", "Rajas", "Papas", "Cebolla", "Ajo", "Piña", "Anchoas"],
        ["Nada","Jamón",  "Pavo", "Rajas", "Papas", "Cebolla", "Ajo", "Piña", "Anchoas"],
        ["Nada","Jamón",  "Pavo", "Rajas", "Papas", "Cebolla", "Ajo", "Piña", "Anchoas"],
        ["Nada","Jamón",  "Pavo", "Rajas", "Papas", "Cebolla", "Ajo", "Piña", "Anchoas"],
        ["Nada","Jamón", "Pavo", "Rajas", "Papas", "Cebolla", "Ajo", "Piña", "Anchoas"],
    ]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView)->Int{ //Componentes del Picker
        return 5
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int { //Elementos
        return ingredientesArr[component].count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? { //Texto picker
        return ingredientesArr[component][row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Orden!.ingrediente1 = ingredientesArr[0][ingredientes.selectedRowInComponent(0)]
        Orden!.ingrediente2 = ingredientesArr[1][ingredientes.selectedRowInComponent(1)]
        Orden!.ingrediente3 = ingredientesArr[2][ingredientes.selectedRowInComponent(2)]
        Orden!.ingrediente4 = ingredientesArr[3][ingredientes.selectedRowInComponent(3)]
        Orden!.ingrediente5 = ingredientesArr[4][ingredientes.selectedRowInComponent(4)]
        print("\n\nTam:\(Orden!.tamano), Mas:\(Orden!.tipoMasa), Ques:\(Orden!.tipoQueso), I1:\(Orden!.ingrediente1), I2:\(Orden!.ingrediente2), I3:\(Orden!.ingrediente3), I4:\(Orden!.ingrediente4), I5:\(Orden!.ingrediente5)")
    }
    
    //------------Cambio de tamaño a fuente UIPicker---------------------------
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        var label = view as! UILabel!
        if label == nil {
                label = UILabel()
        }
        let title = NSAttributedString(string: ingredientesArr[component][row], attributes: [NSFontAttributeName: UIFont.systemFontOfSize(12.0, weight: UIFontWeightRegular)])
        label.attributedText = title
        label.textAlignment = .Center
        return label
    }
    
    //----------Botón-----------------------------
    
    @IBAction func ok4(sender: AnyObject) {
    }

    //---------------Ciclo de vida -------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ingredientes.delegate = self
        self.ingredientes.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Confirmacion
        if Orden?.ingrediente1 == "Nada"
            {Orden?.ingrediente1 = ingredientesArr[0][0]}
        sigVista.Orden = self.Orden
    }

}
