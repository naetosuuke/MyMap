//
//  ViewController.swift
//  MyMap
//
//  Created by Daisuke Doi on 2022/11/28.
//

import UIKit
import MapKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Text FieldのDelegate通知先を設定
        inputText.delegate = self
        
    }
  
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var dispMap: MKMapView!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //キーボードを閉じる(1)
        textField.resignFirstResponder()
        
        //入力された文字を繰り返す(2)
        if let searchKey = textField.text{
            //入力された文字をデバッグエリアに表示(3)
            print(searchKey)
            
        }
        
        //デフォルト動作を行うのでTrueを返す(4)
        return true
        
    }
    
    
    
    
    
    
}

