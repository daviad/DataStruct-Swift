//
//  ViewController.swift
//  BinaryTree
//
//  Created by 丁秀伟 on 2018/5/6.
//  Copyright © 2018年 丁秀伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let items: Array<String> = ["A","B","D","","","E","","","C","","F",""]
        let tree = GeneralBinaryTree(items: items)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

