//
//  main.swift
//  ID create
//
//  Created by user on 2017/6/15.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

var ID = TWId(ID:"B2SSSS2")

print(ID.createTWId())

//var T = "Z12A4"
//let areaToE = "ABCDEFGHJKLMNPQRSTUVXYWZIO"
//
//var areaA = String(T[T.startIndex])
//print(type(of:areaA))
//var area = 0
//for i in 0..<26{
//    let indexOffset = areaToE.index(areaToE.startIndex, offsetBy: i)
//    if areaA == String(areaToE[indexOffset]){
////        print("\(areaA):\(String(areaToE[indexOffset])):\(i)")
//        area = i + 10
//        break
//    }
////    print("\(i)")
//}
//print(area)
//
//if T.characters.count >= 2 {
//    var genderIndex = T.index(T.startIndex, offsetBy: 1)
//    print(T[genderIndex])
//    var genderA = Int(String(T[genderIndex]))
//    var gender = genderA == 1 ? true :false
//    print(gender)
//}
//var SID:[Int] = []
//if T.characters.count >= 3{
//    
//    for i in 0..<T.characters.count - 2{
//        let FIndex = T.index(T.startIndex, offsetBy: 2 + i)
//        var num = Int(String(T[FIndex]))
//        SID.append(num ?? 10)
//    }
//
//    print(SID.description)
//    
//}

