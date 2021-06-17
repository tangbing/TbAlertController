//
//  TbAlertController.swift
//  TbAlertController
//
//  Created by Tb on 2021/6/17.
//

import UIKit

enum TbPreferredStyle {
    case preferredStyleAlert
    case preferredStyleActionSheet
}

enum TbAlertActionStyle {
    case TbAlertActionStyleDefault
    case TbAlertActionStyleCancel
    case TbAlertActionStyleDestructive
}

typealias handler = ((_ action: TbAlertAction) -> Void)?


class TbAlertAction: NSObject {
    var textTitle: String
    var alertActionStyle: TbAlertActionStyle
    var handler: handler
    
    init(textTitle: String, alertActionStyle: TbAlertActionStyle, handler: handler) {
        self.textTitle = textTitle
        self.alertActionStyle = alertActionStyle
        self.handler = handler
        super.init()
    }
}

class TbAlertController: UIViewController {

    var textTitle: String
    var textMessage: String
    var preferredStyle: TbPreferredStyle
    
    var titleFont: UIFont = .systemFont(ofSize: 17)
    var titleColor: UIColor = .black
    
    var messageFont: UIFont = .systemFont(ofSize: 15)
    var messageColor: UIColor = UIColor(hue: 0.3, saturation: 0.3, brightness: 0.3, alpha: 1.0)
    
    
    var alertActions: [TbAlertAction] = []
    var alertTextFields: [UITextField] = []

    
    
    
    init(textTitle: String, message: String, preferredStyle: TbPreferredStyle) {
        self.textTitle = textTitle
        self.textMessage = message
        self.preferredStyle = preferredStyle
        super.init(nibName: nil, bundle: nil)
        self.defaultValues()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: 公共 func
    func addAction(action: TbAlertAction) {
        alertActions.append(action)
    }
    
    func defaultValues() {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
