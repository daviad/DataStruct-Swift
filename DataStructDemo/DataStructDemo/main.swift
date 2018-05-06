//
//  main.swift
//  DataStructDemo
//
//  Created by 丁秀伟 on 2018/5/6.
//  Copyright © 2018年 丁秀伟. All rights reserved.
//

import Foundation

let items: Array<String> = ["A", "B", "D", "", "", "E", "", "", "C", "","F", "", ""]
let generalBinaryTree: GeneralBinaryTree = GeneralBinaryTree(items: items)

//二叉树的遍历
generalBinaryTree.preOrderTraverse()
generalBinaryTree.inOrderTraverse()
generalBinaryTree.afterOrderTraverse()
