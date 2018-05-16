//
//  MapTest.swift
//  DataStructDemo
//
//  Created by 丁秀伟 on 2018/5/14.
//  Copyright © 2018年 丁秀伟. All rights reserved.
//

import Foundation
//let intArray = [1,2,3]
class MapTest {
    func test1() {
        let intArray = [1,2,3]
//        let resultArray = intArray.map({$0*2})
        let resultArray = intArray.map{
            $0*2
        }
        
        print(resultArray)
        
    }
}
