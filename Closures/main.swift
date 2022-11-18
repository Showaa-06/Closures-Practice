//
//  main.swift
//  Closures
//
//  Created by 鈴木彰悟 on 2022/11/02.
//

import SwiftUI

func totalScore (score: Int,deduction: Int, add: (Int, Int) -> Int) -> Int {
   return add(score,deduction)
    
}
func score (point1: Int, point2: Int) -> Int {
    return point1 - point2
}
let Sho = totalScore(score: 100, deduction: 30,add: score)
print(Sho)


//クロージャー
let Showa = totalScore(score: 100, deduction: 35) {$0 - $1}
print(Showa)
    

let shoScore = [60,70,90,50,60]

func addScore  (n1: Int) -> Int {
    return n1 + 5
    
}
let sho = shoScore.map(addScore)
print(sho)


//クロージャー
let sinScore = [70,80,44,55,60]
print(sinScore.map{$0 + 10})

let newsinScore = sinScore.map{"\($0)"}
print(newsinScore)


//{ (n1: Int) -> Int in
   // return n1 + 2
    
//}
//alow.map(addtwo)

//func addtwo
//{ → 先頭へ
//Intの横にin
//Datatypeを前へ
//: Intを削除  ) -> Intを削除  //$0 + 2に変更し{}で囲む
//returnを削除






