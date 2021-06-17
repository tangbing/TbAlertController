//
//  ViewController.swift
//  TbAlertController
//
//  Created by Tb on 2021/6/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        let alert = UIAlertController(title: "111", message: "222", preferredStyle: .alert)
        
       let okAlert = UIAlertAction(title: "ok", style: .default) { alert in
             
        }
        let cancelAlert = UIAlertAction(title: "cancel", style: .cancel) { alert in
             
         }
        let otherAlert = UIAlertAction(title: "destructive", style: .destructive) { alert in
             
         }
        alert.addAction(okAlert)
        alert.addAction(cancelAlert)
        alert.addAction(otherAlert)
        self.present(alert, animated: true, completion: nil)
    }


}

