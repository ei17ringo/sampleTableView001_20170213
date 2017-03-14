//
//  ViewController.swift
//  sampleTableView001
//
//  Created by Eriko Ichinohe on 2017/03/14.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

// ①プロトコルの設定 UITableViewDelegate,UITableViewDataSource
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ④TableViewに指示をだすのがViewControllerだと設定する
        // Storyboardで設定
    }
    
    // ②行数を決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // ③リストに表示する文字を決定し、表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 文字を表示するセルの取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // 表示文字の設定
        //TODO:配列を使用して、プログラミング言語のリストを表示しましょう
        cell.textLabel?.text = "\(indexPath.row)行目"
        
        // 文字を設定したセルを返す
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

