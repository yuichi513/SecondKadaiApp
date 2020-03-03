//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 山田裕一 on 2020/03/01.
//  Copyright © 2020 yuichi.yamada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //ユーザーから名前を取得
    @IBOutlet weak var namebox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        namebox.placeholder = "入力はこちら"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewContoroller:SecondViewController = segue.destination as! SecondViewController
        secondViewContoroller.userName = "\(namebox.text!)"
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
}

