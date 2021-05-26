//
//  Details.swift
//  PrototipoIntegrado
//
//  Created by user183806 on 4/21/21.
//  Copyright © 2021 user183806. All rights reserved.
//

import UIKit

class Details: UIViewController {
    
    @IBOutlet weak var NombreProducto: UILabel!
    @IBOutlet weak var ImagenProducto: UIImageView!
    @IBOutlet weak var Precio: UILabel!
    @IBOutlet weak var DescripcionProducto: UILabel!
    
    var passedData: [String] = []

    var NombreProductoText = String()
    var ImagenProductoNum = Int()
    var PrecioNum = Double()
    var DescripText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Poner el nombre del producto seleccionado
        NombreProducto.text = String(passedData[0])
        NombreProducto.textAlignment = .center
        
        //Precio del producto seleccionado
        Precio.text = passedData[1]
        Precio.textAlignment = .center
        
        //Descripcion del producto selecionado
        DescripcionProducto.text = passedData[2]
        
        //Poner la imagen del producto seleccionado
        ImagenProducto.image = UIImage(named: passedData[3])
        //ImagenProducto.image = UIImage(named: "Add")
        
    }


}
