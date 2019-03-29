//
//  ConsumoDeAguaViewController.swift
//  SegundoExamen
//
//  Created by Admin on 3/28/19.
//  Copyright © 2019 Ivan Ibarra. All rights reserved.
//

import UIKit

class ConsumoDeAguaViewController: UIViewController {
    
    public var contadorL:Double = 0
    
    @IBOutlet weak var txtConsmo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        self.title = "Consumo de Agua"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnVaso(_ sender: Any) {
        let vaso:Double = 0.300
        contadorL = contadorL + vaso
        txtConsmo.text = ("\(contadorL)")
    }
    
    @IBAction func btn600(_ sender: Any) {
        let seis:Double = 0.600
        contadorL = contadorL + seis
        txtConsmo.text = ("\(contadorL)")
    }
    
    @IBAction func btnLitro(_ sender: Any) {
        let litro:Double = 1.0
        contadorL = contadorL + litro
        txtConsmo.text = ("\(contadorL)")
    }
    
    @IBAction func btnLitroYmedio(_ sender: Any) {
        let unoymedio:Double = 1.5
        contadorL = contadorL + unoymedio
        txtConsmo.text = ("\(contadorL)")
    }
    
    override var canBecomeFirstResponder: Bool{
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
           contadorL = 0
           txtConsmo.text = ("\(contadorL)")
        }
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
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
