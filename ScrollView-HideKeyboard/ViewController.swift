//
//  ViewController.swift
//  ScrollView-HideKeyboard
//
//  Created by Rohit on 10/10/16.
//  Copyright © 2016 Introp. All rights reserved.
//

import UIKit

extension UIViewController{
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var a: UITextField!
    @IBOutlet var b: UITextField!
    @IBOutlet var c: UITextField!
    @IBOutlet var d: UITextField!
    @IBOutlet var e: UITextField!
    @IBOutlet var f: UITextField!
    @IBOutlet var g: UITextField!
    @IBOutlet var h: UITextField!
    @IBOutlet var i: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // MARK: Hide keyboard when tap around
        self.hideKeyboardWhenTappedAround()
        
        // MARK: UITextFieldDelegate
        a.delegate = self
        b.delegate = self
        c.delegate = self
        d.delegate = self
        e.delegate = self
        f.delegate = self
        g.delegate = self
        h.delegate = self
        i.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Move up text field in scroll bar when start editing
    @IBOutlet var scrollView: UIScrollView!
    func textFieldDidBeginEditing(textField: UITextField) {
        var scrollPoint:CGPoint
        scrollPoint = CGPointMake(0, textField.frame.origin.y)
        scrollView.setContentOffset(scrollPoint, animated: true)
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        scrollView.setContentOffset(CGPointZero, animated: true)
    }
    @IBAction func submitBtnClicked(sender: AnyObject) {
        print("SUBMITED.......")
    }
}

