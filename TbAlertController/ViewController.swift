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
        self.view.backgroundColor = .lightGray
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let alert = TbAlertController(textTitle: "还没有朗读完，确定要结束吗？", message: "", preferredStyle: .preferredStyleActionSheet)
        alert.titleColor = UIColor.hex(hexString: "#060607")
        alert.titleFont = .systemFont(ofSize: 16, weight: .semibold)
        alert.separatorlLneColor = UIColor.hex(hexString: "#D8D8D8")


        let okAlert = TbAlertAction(textTitle: "ok", alertActionStyle: .TbAlertActionStyleDefault) { (alert) in
            print("ok alert click....")
        }
        
        let otherAlert = TbAlertAction(textTitle: "ok11111", alertActionStyle: .TbAlertActionStyleDefault) { (alert) in
            print("ok alert click....")
        }

        let cancelAlert = TbAlertAction(textTitle: "cancel", alertActionStyle: .TbAlertActionStyleCancel) { (alert) in
            print("cancel alert click....")
        }

        okAlert.textFont = .systemFont(ofSize: 17, weight: .regular)
        cancelAlert.textFont = .systemFont(ofSize: 17, weight: .medium)


        alert.addAction(action: okAlert)
        alert.addAction(action: otherAlert)
        alert.addAction(action: cancelAlert)
        self.present(alert, animated: true, completion: nil)
        
        
//        let alert = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
//
//       let okAlert = UIAlertAction(title: "ok", style: .default) { alert in
//
//        }
//        let cancelAlert = UIAlertAction(title: "cancel", style: .cancel) { alert in
//
//         }
//        let otherAlert = UIAlertAction(title: "destructive", style: .destructive) { alert in
//
//         }
//        alert.addAction(okAlert)
//        alert.addAction(cancelAlert)
//        alert.addAction(otherAlert)
//
//        self.present(alert, animated: true, completion: nil)
    }


}

