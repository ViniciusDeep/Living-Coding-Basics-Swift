//
//  ViewController.swift
//  Urna
//
//  Created by Aluno on 08/11/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imgCandidate: UIImageView!
    @IBOutlet weak var titulo: UITextField!
    @IBOutlet weak var numeroDoCandidato: UITextField!
    
    var eleitores = [Eleitor]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func showCandidate(_ sender: Any) {
        if let number = numeroDoCandidato.text {
            print(number)
            if number == "13" {
                imgCandidate.image = #imageLiteral(resourceName: "haddad.jpeg")
            } else if number == "17" {
                imgCandidate.image = #imageLiteral(resourceName: "bolsonaro.jpg")
            }
        }
        
     
    }
    
    
    
    @IBAction func confirmeVote(_ sender: Any) {
           var nTitulo = titulo.text
           var numero = numeroDoCandidato.text
            var eleitor = Eleitor(titulo: nTitulo!, numero: numero!)
            eleitores.append(eleitor)
        
        
        
        for i in eleitores {
            print(i)
        }
        
        
        
        
    }
    
    
    


}

