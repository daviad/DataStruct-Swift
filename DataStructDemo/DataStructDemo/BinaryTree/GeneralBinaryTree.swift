//
//  GeneralBinaryTree.swift
//  BinaryTree
//
//  Created by 丁秀伟 on 2018/5/6.
//  Copyright © 2018年 丁秀伟. All rights reserved.
//
import Foundation

class GeneralBinaryTreeNode {
    var data: String
    
    var leftChild: GeneralBinaryTreeNode!
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
                node.leftChild = createTree()
                node.rightChild = createTree()
                return node
            }
            
        }
        return nil;
    }
    
    /**
     先序遍历：先遍历根节点，再遍历左子树，让后遍历右子树
     */
    func preOrderTraverse() {
        print("先序遍历：")
        self.preOrderTraverse(node: rootNode)
        print("\n")
    }
    
    private func preOrderTraverse(node: GeneralBinaryTreeNode!) {
        //root
        guard let node = node else {
            print("空", separator: "", terminator: " ")
            return
        }
        print(node.data, separator: "", terminator: " ")
        
        preOrderTraverse(node: node.leftChild)
        preOrderTraverse(node: node.rightChild)
    }
    
    /**
     中序遍历
     */
    func inOrderTraverse() {
        print("中序遍历：")
        self.inOrderTraverse(node: rootNode)
        print("\n")
    }
    
    private func inOrderTraverse (node: GeneralBinaryTreeNode!) {
        guard let node = node else {
            print("空", separator: "", terminator: " ")
            return
        }
        inOrderTraverse(node: node.leftChild)
        print(node.data, separator: "", terminator: " ")
        inOrderTraverse(node: node.rightChild)
    }
    
    /**
     后续遍历
     */
    func afterOrderTraverse() {
        print("后序遍历：")
        self.afterOrderTraverse(node: rootNode)
        print("\n")
    }
    
    private func afterOrderTraverse (node: GeneralBinaryTreeNode!) {
        guard let node = node else {
            print("空", separator: "", terminator: " ")
            return
        }
        afterOrderTraverse(node: node.leftChild)
        afterOrderTraverse(node: node.rightChild)
        print(node.data, separator: "", terminator: " ")
    }
}
