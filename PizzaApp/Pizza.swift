//  Created by Jesus Manuel Porras on 8/21/16.
//  Copyright © 2016 Jesus Manuel Porras. All rights reserved.

import UIKit

class Pizza {
    var tamano: String?
    var tipoQueso: String?
    var tipoMasa: String?
    var ingrediente1: String?
    var ingrediente2: String?
    var ingrediente3: String?
    var ingrediente4: String?
    var ingrediente5: String?

    init(tamano: String, tipoQueso: String, tipoMasa: String,ingrediente1: String,ingrediente2: String,ingrediente3: String,ingrediente4: String,ingrediente5: String) {
        self.tamano = tamano
        self.tipoQueso = tipoQueso
        self.tipoMasa = tipoMasa
        self.ingrediente1 = ingrediente1
        self.ingrediente2 = ingrediente2
        self.ingrediente3 = ingrediente3
        self.ingrediente4 = ingrediente4
        self.ingrediente5 = ingrediente5
    }
    
}
