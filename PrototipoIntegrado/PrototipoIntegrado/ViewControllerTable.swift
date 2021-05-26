//
//  ViewControllerTable.swift
//  PrototipoIntegrado
//
//  Created by user183806 on 4/21/21.
//  Copyright © 2021 user183806. All rights reserved.
//
import UIKit

class ViewControllerTable: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var shopcar: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopcar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycell")
        cell.textLabel?.text = shopcar[indexPath.row]
        cell.imageView!.image = UIImage(named: shopcar[indexPath.row])!
        return cell
    }
    
    
    @IBAction func Whatsapp(_ sender: Any) {
        llamarWsp(mensaje: "Shopcar222")
    }
    
    func llamarWsp(mensaje:String){
        let msg = mensaje
        let urlWhats = "whatsapp://send?text=\(msg)"
        if let urlString = urlWhats.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed){
            if let whatsappURL = NSURL(string: urlString){
                if UIApplication.shared.canOpenURL(whatsappURL as URL){
                    UIApplication.shared.open(whatsappURL as URL)
                }
            }
        }
        
    }
    
    
}
