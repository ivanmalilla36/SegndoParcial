//
//  PerdilViewController.swift
//  SegundoExamen
//
//  Created by Admin on 3/28/19.
//  Copyright © 2019 Ivan Ibarra. All rights reserved.
//

import UIKit
import RNNotificationView

class PerdilViewController: UIViewController {

    @IBOutlet weak var strNombre: UITextField!
    @IBOutlet weak var strEdad: UITextField!
    @IBOutlet weak var strEstatura: UITextField!
    @IBOutlet weak var strPeso: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        self.title = "Perfil"
    }
    @IBAction func btnGuardar(_ sender: Any) {
        // Creating instance
        let notification = RNNotificationView()
        // Customizations
        notification.titleFont = UIFont(name: "AvenirNext-Bold", size: 10)!
        notification.titleTextColor = UIColor.blue
        notification.iconSize = CGSize(width: 46, height: 46) // Optional setup
        notification.show(withImage: nil,
                          title: "Title",
                          message: "Message",
                          onTap: {
                            print("Did tap notification")
        })
        self.navigationController!.popViewController(animated: true)
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
}
