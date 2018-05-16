//
//  ReduceTest.swift
//  DataStructDemo
//
//  Created by 丁秀伟 on 2018/5/14.
//  Copyright © 2018年 丁秀伟. All rights reserved.
//

import Foundation
class ReduceTest {
    func test() {
        let intArray = [1,2,3,4]
        let sun = intArray.reduce(0) {
            $0 + $1
        }
        print(sun)
    }
    
    func test2() {
        let newArray = ["hello","world","say","By","optional"]
        let sun = newArray.reduce("") {
            $0+" "+$1
        }
        print(sun)
    }
    
    func test3() {
        let intArray = [1,2,3,4]
        let sun = intArray.reduce(0,+)
        print(sun)
    }
    
    func mapUsingReduce<T,U>(xs:[T],f:(T)->U)->[U] {
       return xs.reduce([]) { (result:[U], t:T) -> [U] in
            var result = result
           result.append(f(t))
            return result
        }
    }
    
    
    func mapUsingReduce2<T,U>(xs:[T],f:(T)->U)->[U] {
        return xs.reduce([]) { (result, t) -> [U] in
            var result = result
            result.append(f(t))
            return result
        }
    }
    
    func filterUsingReduce<T>(xs:[T],f:(T)->Bool) -> [T] {
        return xs.reduce([], { (result:[T], t:T) ->[T] in
             var result = result;
            if f(t) {
                result.append(t)
            }
             return result
        })
    }
    
    func filterUsingReduce2<T>(xs:[T],f:(T)->Bool) -> [T] {
        return xs.reduce([], { (result, t) ->[T] in
            var result = result;
            if f(t) {
                result.append(t)
            }
            return result
        })
    }
}
