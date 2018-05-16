//
//  OptinalTest.swift
//  DataStructDemo
//
//  Created by 丁秀伟 on 2018/5/13.
//  Copyright © 2018年 丁秀伟. All rights reserved.
//

import Foundation
class optionTest {
    
    func test() {
        /// 几种声明方式
        var optionalValue : Optional<Int> //完整声明 注意<>中的都是类型
        var optionalValue2 : Int?         //显示声明
        var optionalValue3 : Int!         //隐式声明
        
        /// 几种解包
        /// 演示值
        var someOptional:Int? = 3  //初始值为3
        
        /// 1.通过判断是否等于nil 这里并未解包 只能保证安全性
        if someOptional != nil{
            print("value is \(someOptional!)")
        }
        
        /// 2.if-let绑定
        if let value = someOptional{
            print("value is \(value)")
        }
        /// 3.??解包
        print("value is \(someOptional ?? 2)")
        
        /// 4.swift2.0新的匹配模式 但是要在xcode7环境
        
        //新增使用enumeration匹配 也就是枚举匹配方式
        if case .some(let x) = someOptional{
            print("someOptional value is \(x)") //如果为nil 情况 可不会输出东西 因为匹配的是Some!
        }
        
        //新增使用可选模式匹配
        
        if case let x? = someOptional{
            print("someOptional value is \(x)") //不需要对x进行解包之类的东东
        }

    }
    
    enum MyOption<T> {
        case None
        case Some(T)
        
        //生成一个有值的可选类型
        init(_ value:T){
            self = .Some(value)
        }
        
        //nil
        init(_ nilLiteral:()){
            self = .None
        }
    }
}
