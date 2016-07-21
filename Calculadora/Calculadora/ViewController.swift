//
//  ViewController.swift
//  Calculadora
//
//  Created by Diosnel Velazquez on 20/7/16.
//  Copyright © 2016 Diosnel Velazquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //print("hola")
        // Do any additional setup after loading the view, typically from a nib.
        labelResult.text = "\(result)"
    }
    
    var result:Float = 0
    
    var actualNumero:Float = 0
    
    var resultadoParcial:Float = 0
    
    var actualOperacion:String = "="
    
    @IBOutlet weak var labelResult: UILabel!
    
    @IBAction func numero(sender: UIButton) {

        actualNumero = actualNumero * 10 + Float(Int(sender.titleLabel!.text!)!)
        labelResult.text = "\(actualNumero)"
    }

    @IBAction func operacion(sender: UIButton) {
        let op = sender.titleLabel?.text
        
        if (actualOperacion == "+"){
            resultadoParcial = resultadoParcial + actualNumero
            labelResult.text = "\(resultadoParcial)"
        }
        else if (actualOperacion == "-"){
            resultadoParcial = resultadoParcial - actualNumero
            labelResult.text = "\(resultadoParcial)"
        }
        else if (actualOperacion == "x"){
            resultadoParcial = resultadoParcial * actualNumero
            labelResult.text = "\(resultadoParcial)"
        }
        else if (actualOperacion == "/"){
            resultadoParcial = resultadoParcial / actualNumero
            labelResult.text = "\(resultadoParcial)"
        }
        
        if op != "=" && resultadoParcial == 0{
            resultadoParcial = actualNumero
        }
        
        actualNumero = 0
        actualOperacion = op!
    }
    @IBAction func clear(sender: UIButton) {
        actualNumero = 0
        resultadoParcial = 0
        labelResult.text = "\(actualNumero)"
        actualOperacion = "="
    }
   
}

