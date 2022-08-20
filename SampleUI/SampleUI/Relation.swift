//
//  Relation.swift
//  SampleUI
//
//  Created by ViVeLab Tunja9 on 20/08/22.
//  Copyright © 2022 Sena. All rights reserved.
//

import UIKit

class Relation: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var Nombre: UITextField!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var Apellido: UITextField!
    @IBOutlet weak var apellidoLabel: UILabel!
    @IBOutlet weak var Edad: UITextField!
    @IBOutlet weak var edadLabel: UILabel!
    @IBOutlet weak var Telefono: UITextField!
    @IBOutlet weak var telefonoLabel: UILabel!
    @IBOutlet weak var Contrasena: UITextField!
    @IBOutlet weak var contrasenaLabel: UILabel!
    
    @IBOutlet weak var PrintLabel: UILabel!
    @IBOutlet weak var TableCellView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableCellView.delegate = self
        TableCellView.dataSource = self
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Confirmar(_ sender: Any) {
           PrintLabel.text = " Nombre:  \(Nombre.text!) \(Apellido.text!) \n Edad: \(Edad.text!) \n Telefono:  \(Telefono.text!) \n Contraseña:  \(Contrasena.text!) "
           
       }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension Relation: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "name", for: indexPath) as! TableCellView
        cell.labelCell.text = array[indexPath.row]
        return cell
    }
}
