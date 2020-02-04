//
//  NakatsukaViewController.swift
//  ProductDouble
//
//  Created by Fujii Yuta on 2020/02/04.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class NakatsukaViewController: UIViewController {

    var passText = String()
    
    @IBOutlet weak var passData: UILabel!
    
    /*
     
     ・近藤さんがpassTextという値を渡してくるので、
     ・passTextというString型の変数を準備し、labelへ表示
     ・下部へボタンを設置しタップでdissmissによって戻る
     ・toolbarを設定し、そちらにも渡ってきた値をタイトルとして表示
     
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushButton(_ sender: Any) {
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
