//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Nikhil Iyer on 12/19/17.
//  Copyright © 2017 Nikhil Iyer. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController, UIApplicationDelegate {

    @IBOutlet weak var defaultTipLabel: UILabel!
    @IBOutlet weak var ChangeDefaultTipField: UITextField!
    var defaultTip = 5.0;
    var defaults = UserDefaults.standard;


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
        
    }
    @IBAction func Change(_ sender: Any) {
        
        defaultTip = Double(ChangeDefaultTipField.text!)!
        defaultTipLabel.text = "$\(defaultTip)"
        defaults.set(ChangeDefaultTipField.text, forKey: "myName");
        defaults.synchronize()
        //ChangeDefaultTipField.text = "";
    }

    
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "myName") as? String{
            defaultTipLabel.text = "$\(x)";
        }
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
