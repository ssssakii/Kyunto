//
//  ViewController.swift
//  Kyun_1
//
//  Created by 坂本のぞみ on 2016/11/21.
//  Copyright © 2016年 坂本のぞみ. All rights reserved.
//

import UIKit

class KyunViewController: UIViewController {

    
    var kyunPt: Int=0
    var saveData:UserDefaults=UserDefaults.standard
    
    @IBOutlet var kyunLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //読み込み
        kyunLabel.text = String(saveData.integer(forKey: "kyunKey"))
        
    }
    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //きゅんボタン
    @IBAction func kyun(sender: UILongPressGestureRecognizer){
        //きゅんを貯めていく
        if(kyunPt>0){
            kyunPt=kyunPt+1
        }else{
            kyunPt=kyunPt+saveData.integer(forKey: "kyunKey")+1
        }
        
        kyunLabel.text=String(kyunPt)
        
        //UserDefalutsを書き込む（きゅんを保存）
        saveData.set(kyunPt,forKey: "kyunKey")
        saveData.synchronize()
        
        //アラート
        let alert:UIAlertController=UIAlertController(title:"\(kyunPt)キュン",message:"GET",preferredStyle: .alert)
        
        //メモする
        alert.addAction(
            UIAlertAction(
                title:"メモする",
                style:.default,
                handler:{ action in
                //ボタンが押された時の動作
                    NSLog("メモボタンが押されました！")
                }
            )
        )
        //戻る
        alert.addAction(
            UIAlertAction(
                title:"back",
                style:.default,
                handler:{ action in
                    //ボタンが押された時の動作
                    NSLog("戻るボタンが押されました！")
            }
            )
        )

        present(alert, animated: true,completion:nil)
    }
    
    
}

