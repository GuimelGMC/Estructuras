//
//  BaseController.swift
//  EstructuraVIPER
//
//  Created by GuimelGMC on 15/01/18.
//  Copyright © 2018 GuimelGMC. All rights reserved.
//

import UIKit

class BaseController: UIViewController {
    
    @IBOutlet var labels: [UILabel]!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var textFields: [UITextField]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLocalizables()
    }
    
    private func setLocalizables() {
        if let _ = labels {
            labels.forEach { (lbl) in
                lbl.text = NSLocalizedString(lbl.text!, comment: "")
            }
        }
        
        if let _ = buttons {
            buttons.forEach { (btn) in
                btn.setTitle(NSLocalizedString(btn.title(for: .normal)!, comment: ""), for: .normal)
            }
        }
        
        if let _ = textFields {
            textFields.forEach { (txt) in
                txt.placeholder = NSLocalizedString("PLACEHOLDER_TEXTFIELD", comment: "")
            }
        }
    }
    
    func addCloseButton() {
        let btn = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.cancel, target: self, action: #selector(dismissView))
        navigationItem.leftBarButtonItem = btn
    }
    
    @objc func dismissView() {
        self.dismiss(animated: true, completion: nil)
    }

}
