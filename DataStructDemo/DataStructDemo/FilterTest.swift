//
//  FilterTest.swift
//  DataStructDemo
//
//  Created by 丁秀伟 on 2018/5/14.
//  Copyright © 2018年 丁秀伟. All rights reserved.
//

import Foundation
class FilterTest {
    func test1(){
        var filesNeedToFilter = ["ViewController.swift","HelloWorld.c","Web.java","Person.swift","Main.c"]
        filesNeedToFilter = filesNeedToFilter.filter{
//            if $0.hasSuffix(".swift") {
//                return true
//            } else {
//                return false
//            }
            $0.hasSuffix(".swift")
        }
        print(filesNeedToFilter)
    }
    
}
