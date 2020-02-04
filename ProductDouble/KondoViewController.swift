//
//  KondoViewController.swift
//  ProductDouble
//
//  Created by Fujii Yuta on 2020/02/04.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class KondoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    /*
        
        課題 tableViewを作成し、駅名5つを入れたセルを準備し、
        セルタップでNakatsukaViewControllerへlabelの値を渡しながら画面遷移
        (NakatsukaViewControllerが受ける変数名はpassText)
        
        */
       
       //課題、承知しました。
    //これからコードベースの作成をします
       
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var indexNumber = 0
    
    var stationArray = ["新宿","渋谷","恵比寿","五反田","高輪ゲートウェイ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stationArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = stationArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexNumber = indexPath.row
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nakatsukaVC = segue.destination as! NakatsukaViewController
               nakatsukaVC.passText = stationArray[indexNumber]
    }

}
