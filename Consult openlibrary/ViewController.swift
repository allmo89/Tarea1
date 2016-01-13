//
//  ViewController.swift
//  Consult openlibrary
//
//  Created by Allan Mora Brenes on 1/13/16.
//  Copyright (c) 2016 Allan Mora Brenes. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var txtResult: UITextView!
    @IBOutlet weak var txtISBN: UITextField!
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
       let code = textField.text
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:\(code)"
        let url = NSURL(string:urls)
        let datos:NSData?=NSData(contentsOfURL: url!)
        let texto = NSString(data:datos!,encoding:NSUTF8StringEncoding)
        txtResult.text=texto!
        return true;
    }
}

