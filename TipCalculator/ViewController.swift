//
//  ViewController.swift
//  TipCalculator
//
//  Created by Nikhil Iyer on 12/19/17.
//  Copyright © 2017 Nikhil Iyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipView: UITextView!
    @IBOutlet weak var totalBillView: UITextView!
    @IBOutlet weak var tipSegement: UISegmentedControl!
    @IBOutlet weak var peopleSegement: UISegmentedControl!
    @IBOutlet weak var yourBillView: UITextView!
    var defaultTip = 0.0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let x = UserDefaults.standard.object(forKey: "myName") as? String, let dT = Double(x){
            defaultTip = dT;
        }
    }
    
    @IBAction func OnTotalChange(_ sender: Any) {
        let tipsArray = [0.1, 0.15, 0.2];
        let Bill = Double(billField.text!) ?? 0;
        let segment = tipSegement.selectedSegmentIndex;
        //print(defaultTip);
        
        if(segment == 0){
                //defaultTip = 5;
                let tip = Double(Bill * defaultTip / 100);
                let totalBill = Double(Bill + tip);
                let yourBill = totalBill / (Double(peopleSegement.selectedSegmentIndex) + 1);
                
                tipView.text = String(format: "$%.2f", tip)
                totalBillView.text = String(format: "$%.2f", totalBill)
                yourBillView.text = String(format: "$%.2f", yourBill)
            
            
        }
            
        else{
            let tip = Double(Bill * (tipsArray[(tipSegement.selectedSegmentIndex - 1)]));
            let totalBill = Double(Bill + tip);
            let yourBill = totalBill / (Double(peopleSegement.selectedSegmentIndex) + 1);
            
            tipView.text = String(format: "$%.2f", tip)
            totalBillView.text = String(format: "$%.2f", totalBill)
            yourBillView.text = String(format: "$%.2f", yourBill)
        }
        
    }

}

