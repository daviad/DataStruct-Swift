//
//  GeneralBinaryTree.swift
//  BinaryTree
//
//  Created by 丁秀伟 on 2018/5/6.
//  Copyright © 2018年 丁秀伟. All rights reserved.
//

import UIKit

class GeneralBinaryTreeNode {
    var data: String
    
    var letChild: GeneralBinaryTreeNode!
    var rightChild: GeneralBinaryTreeNode!
    
    init(data: String) {
        self.data = data
    }
}

class GeneralBinaryTree {
    var rootNode: GeneralBinaryTreeNode!
    
    fileprivate var items: Array<String>
    fileprivate var index = -1
    
    init(items: Array<String>) {
        self.items = items;
        self.rootNode = self.createTree()
    }
    
    
    /// 以先序递归的方式创建二叉树
    ///
    /// - Returns:
    fileprivate func createTree() -> GeneralBinaryTreeNode! {
        self.index = self.index + 1
        if self.index < self.items.count {
            let item = self.items[self.index]
            if item == "" {
                return nil;
            } else {
                let node = GeneralBinaryTreeNode(data: item)
                node.letChild = createTree()
                node.rightChild = createTree()
                return node
            }
            
        }
        return nil;
    }
}
