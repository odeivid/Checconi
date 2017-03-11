//
//  ContatoViewController.swift
//  Checconi
//
//  Created by DEIVID LOUREIRO on 11/03/17.
//  Copyright © 2017 DEIVID LOUREIRO. All rights reserved.
//

import UIKit

class ContatoViewController: UIViewController {

    let lat = -20.412605
    let lng = -49.982921
    
    @IBOutlet weak var btnEndereco: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.btnEndereco.titleLabel?.numberOfLines = 2
        self.btnEndereco.titleLabel?.textAlignment = .center
        self.btnEndereco.setTitle("Rua Uruguai, 4622 - San Remo\nVotuporanga - SP", for: .normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func enviarEmail(_ sender: Any) {
        if let emailURL = NSURL(string: "mailto:checconi@checconi.com.br") {
            
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(emailURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(emailURL as URL)
            }
        }
    }
    
    @IBAction func telefonar(_ sender: Any) {
        if let phoneURL = NSURL(string: "tel:01734224413") {
            
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(phoneURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(phoneURL as URL)
            }
        }
    }
    
    @IBAction func abrirSite(_ sender: Any) {
        if let siteURL = NSURL(string: "http://www.checconi.com.br") {
            
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(siteURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(siteURL as URL)
            }
        }
    }
    
    @IBAction func abrirMapa(_ sender: Any) {
    }
}
