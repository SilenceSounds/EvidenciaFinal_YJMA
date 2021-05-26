//
//  MainMenu.swift
//  PrototipoIntegrado
//
//  Created by user183806 on 4/21/21.
//  Copyright © 2021 user183806. All rights reserved.
//

import UIKit

class MainMenu: UIViewController {
    var Productos = ["Piernas", "Pollo Entero", "Muslos", "Pierna de cerdo", "Milanesas","Solomillo","Costillas de res","Costillas de cerdo", "Aguja","Atun","Salmon","Filetes de pescado"]
    
    var Precios = [25, 50, 30, 120, 50, 90, 200, 120, 150, 150, 250, 50]
    
    var Descript = ["4 deliciosas piernitas de pollo condimentadas", "Pollo completo de 5kg la unidad", "Jugosos muslitos de pollo sazonados con sal y pimienta, perfectos para boneless", "Gigantesca y jugosa pierna de cerdo con marmeleo A1", "Milanesas sencillas perfectas para empanizar o para carne asada", "Solomillo gigante y jugoso, lleno de grasa y sabor en cada bocado", "Gigantesco costillar de cerdo, perfecto para una parrillada y acondicionada con salsa bbq", "Sorprendentes costillas de cerdo, llenas de sabor y perfectas para hacer en el horno", "Deliciosa aguja de Nuevo Leon importada", "Exotico atun japones importado", "Rebanada de salmon lista para comer, asar o emplear en preparacion de sushi", "Filetes de pescado recien pescados perfectos para empanizar o freir"]
    
    var index = 0
    var passData: [String] = ["","","",""]
    
    var preshopcar: [String] = []
    
    @IBAction func P1(_ sender: Any) {
        index = 0
        preshopcar.append(Productos[0])
    }
    
    @IBAction func P2(_ sender: Any) {
        index = 1
        preshopcar.append(Productos[1])
    }
    
    @IBAction func P3(_ sender: Any) {
        index = 2
        preshopcar.append(Productos[2])
    }
    
    @IBAction func P4(_ sender: Any) {
        index = 3
        preshopcar.append(Productos[3])
    }
    
    @IBAction func P5(_ sender: Any) {
        index = 4
        preshopcar.append(Productos[4])
    }
    
    @IBAction func P6(_ sender: Any) {
        index = 5
        preshopcar.append(Productos[5])
    }
    
    @IBAction func P7(_ sender: Any) {
        index = 6
        preshopcar.append(Productos[6])
    }
    
    @IBAction func P8(_ sender: Any) {
        index = 7
        preshopcar.append(Productos[7])
    }
    
    @IBAction func P9(_ sender: Any) {
        index = 8
        preshopcar.append(Productos[8])
    }
    
    @IBAction func P10(_ sender: Any) {
        index = 9
        preshopcar.append(Productos[9])
    }
    
    @IBAction func P11(_ sender: Any) {
        index = 10
        preshopcar.append(Productos[10])
    }
    
    @IBAction func P12(_ sender: Any) {
        index = 11
        preshopcar.append(Productos[11])
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seguepro"{
            
            //Obtener los datos del producto especifico
            
            passData[0] = Productos[index]
            passData[1] = String(Precios[index])
            passData[2] = Descript[index]
            passData[3] = String(index+1)
 
            
            //Mandar datos
            let destinationController = segue.destination as! Details
            destinationController.passedData = passData
        } else if segue.identifier == "cartsegue" {
            let destinationController = segue.destination as! ViewControllerTable
            destinationController.shopcar = preshopcar
        }
    }



}
