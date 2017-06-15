//
//  ClassAPI.swift
//  ID create
//
//  Created by user on 2017/6/15.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

class TWId{
    private var gender:Bool
    private var area:Int
    private var SID:[Int] = []
    
    init(){
        self.gender = arc4random() % 2 == 1 ? true : false
        self.area = Int(arc4random() % 26) + 10
    }
    init(gender:Bool){
        self.gender = gender
        self.area = Int(arc4random() % 26) + 10
    }
    init(area:Int){
        self.gender = arc4random() % 2 == 1 ? true : false
        self.area = area<36 && area>9 ? area : Int(arc4random() % 26) + 10
    }
    init(gender:Bool,area:Int){
        self.gender = gender
        self.area = area<36 && area>9 ? area : Int(arc4random() % 26) + 10
    }

    init(ID:String){
        
        //------------area-------------------------
        let areaToE = "ABCDEFGHJKLMNPQRSTUVXYWZIO"
        
        let areaA = String(ID[ID.startIndex])
//        print(type(of:areaA))
        var area = 0
        for i in 0..<26{
            let indexOffset = areaToE.index(areaToE.startIndex, offsetBy: i)
            if areaA == String(areaToE[indexOffset]){
                //        print("\(areaA):\(String(areaToE[indexOffset])):\(i)")
                area = i + 10
                break
            }
            //    print("\(i)")
        }
        //-------------gender------------------------
        var gender = true
        if ID.characters.count >= 2 {
            let genderIndex = ID.index(ID.startIndex, offsetBy: 1)
            let genderA = Int(String(ID[genderIndex]))
            gender = genderA == 1 ? true :false
        }else{
            gender = arc4random() % 2 == 1 ? true : false
        }
        //-------------other number-------------------
        var SIDa:[Int] = []
        if ID.characters.count >= 3{
            
            for i in 0..<ID.characters.count - 2{
                let FIndex = ID.index(ID.startIndex, offsetBy: 2 + i)
                var num = Int(String(ID[FIndex]))
                SIDa.append(num ?? 10)
            }
        }
        
        self.gender = gender
        self.area = area
        self.SID = SIDa
    }

    
    func createTWId() ->String{
        var ID:[Int] = Array(repeating:10,count:11)
        var Mx:[Int] = [1,9,8,7,6,5,4,3,2,1]
        let areaToE = "ABCDEFGHJKLMNPQRSTUVXYWZIO"
        
        if SID != []{
            for i in 0..<SID.count{
                ID[i+3] = SID[i]
                
            }
        }
        
        
        
        ID[0] = area/10
        ID[1] = area%10
        ID[2] = gender ? 1 : 2
        
        var sum:Int = 0
        
        for i in 0..<ID.count - 1{
            if i>2 && ID[i] == 10{
                ID[i] = Int(arc4random()%10)
            }
            sum += ID[i]*Mx[i]
        }
        
        ID[10] = (10-sum%10)%10
        
        var TWid:String = String()
        let Findex = areaToE.index(areaToE.startIndex, offsetBy:area-10)
        let First = areaToE[Findex]
        // 	print(First)
        
        TWid.append(First)
        for i in 2..<ID.count{
            let temp:String = String(ID[i])
            TWid.append(temp)
        }
        
        return TWid
    }
    
}
