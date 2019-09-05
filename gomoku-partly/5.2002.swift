// Flie is the same as 5.1000

import Glibc
import Foundation

var l0 = [Int]()
for i_1 in 0..<361 {
    l0.append(i_1) }

func func_ifWin (var_a__position : [Int], obj : Character, l__sqare : [[Character]]) -> Character {
    var i__da1_leftNum = 0
    var i__da2_lenthFromLeft = 0
    var i__da3_leftEdge = 0
    var i__da4_rightEdge = 0
    while true {
        if l__sqare[var_a__position[0]][var_a__position[1] - i__da1_leftNum] != obj { break }
        i__da1_leftNum += 1
        i__da3_leftEdge += 1
        if var_a__position[1] - i__da3_leftEdge < 0 { break } }
    i__da1_leftNum -= 1
    while true {
        if l__sqare[var_a__position[0]][var_a__position[1] - i__da1_leftNum + i__da2_lenthFromLeft] != obj { break }
        i__da2_lenthFromLeft += 1
        i__da4_rightEdge += 1
        if var_a__position[1] - i__da1_leftNum + i__da2_lenthFromLeft > 18 { break } }
    if i__da2_lenthFromLeft >= 5 { return obj }
    i__da1_leftNum = 0
    i__da2_lenthFromLeft = 0
    i__da3_leftEdge = 0
    i__da4_rightEdge = 0
    while true {
        if l__sqare[var_a__position[0] - i__da1_leftNum][var_a__position[1]] != obj { break }
        i__da1_leftNum += 1
        i__da3_leftEdge += 1
        if var_a__position[0] - i__da1_leftNum < 0 { break } }
    i__da1_leftNum -= 1
    while true {
        if l__sqare[var_a__position[0] - i__da1_leftNum + i__da2_lenthFromLeft][var_a__position[1]] != obj { break }
        i__da2_lenthFromLeft += 1
        i__da4_rightEdge += 1
        if var_a__position[0] - i__da1_leftNum + i__da2_lenthFromLeft > 18 { break } }
    if i__da2_lenthFromLeft >= 5 { return obj }
    i__da1_leftNum = 0
    i__da2_lenthFromLeft = 0
    i__da3_leftEdge = 0
    i__da4_rightEdge = 0
    while true {
        if l__sqare[var_a__position[0] - i__da1_leftNum][var_a__position[1] - i__da1_leftNum] != obj { break }
        i__da1_leftNum += 1
        i__da3_leftEdge += 1
        if var_a__position[0] - i__da1_leftNum < 0 || var_a__position[1] - i__da1_leftNum < 0 { break } }
    i__da1_leftNum -= 1
    while true {
        if l__sqare[var_a__position[0] - i__da1_leftNum + i__da2_lenthFromLeft][var_a__position[1] - i__da1_leftNum + i__da2_lenthFromLeft] != obj { break }
        i__da2_lenthFromLeft += 1
        i__da4_rightEdge += 1
        if var_a__position[0] - i__da1_leftNum + i__da2_lenthFromLeft > 18 || var_a__position[1] - i__da1_leftNum + i__da2_lenthFromLeft > 18 { break } }
    if i__da2_lenthFromLeft >= 5 { return obj }        
    i__da1_leftNum = 0
    i__da2_lenthFromLeft = 0
    i__da3_leftEdge = 0
    i__da4_rightEdge = 0
    while true {
        if l__sqare[var_a__position[0] + i__da1_leftNum][var_a__position[1] - i__da1_leftNum] != obj { break }
        i__da1_leftNum += 1
        i__da3_leftEdge += 1
        if var_a__position[0] + i__da1_leftNum > 18 || var_a__position[1] - i__da1_leftNum < 0 { break } }
    i__da1_leftNum -= 1
    while true {
        if l__sqare[var_a__position[0] + i__da1_leftNum - i__da2_lenthFromLeft][var_a__position[1] - i__da1_leftNum + i__da2_lenthFromLeft] != obj { break }
        i__da2_lenthFromLeft += 1
        i__da4_rightEdge += 1
        if (var_a__position[0] + i__da1_leftNum - i__da2_lenthFromLeft < 0) || (var_a__position[1] - i__da1_leftNum + i__da2_lenthFromLeft) > 18 { break } }
    if i__da2_lenthFromLeft >= 5 { return obj }
    return "\0"
}

@discardableResult
func func_b__perRound (var__db1_mode:String = "Normal", var__db2_ifEnvAndroid:Bool = false, l__db1_lmInputInt:[Int], l__db2_lnInputInt:[Int], var__db3_obj:Character = "m", var__db4_next:[Int] = [0, -1], l0:[Int] = l0) -> (Int, Int) {
    var l0_remaining = l0
    var i = 0
    let l__sqare_1 = [Character](repeating: " ", count: 19)
    var l__sqare = [[Character]](repeating: l__sqare_1, count: 19)
    var mIndex = -1
    var nIndex = -1
    var lmindex = [Int]()
    var lnindex = [Int]()
    var l_db3__aroundIndex = [Int]()
    var l_db4 = [Int]()
    for (_, i__lminputInt) in l__db1_lmInputInt.enumerated() {
        for (v_2__index, v_3__elem) in l0_remaining.enumerated() {
            if v_3__elem == i__lminputInt {
                l0_remaining.remove(at:v_2__index)
                lmindex.append(i__lminputInt)
                l__sqare[Int(i__lminputInt/19)][i__lminputInt%19] = "m"
                mIndex = i__lminputInt
                l_db4 = [mIndex-60, mIndex-59, mIndex-58, mIndex-57, mIndex-56, mIndex-55, mIndex-54, mIndex-41, mIndex-40, mIndex-39, mIndex-38, mIndex-37, mIndex-36, mIndex-35, mIndex-22, mIndex-21, mIndex-20, mIndex-19, mIndex-18, mIndex-17, mIndex-16,mIndex-3, mIndex-2, mIndex-1, mIndex-76, mIndex-80, mIndex-72, mIndex-4, mIndex+60, mIndex+59, mIndex+58, mIndex+57, mIndex+56, mIndex+55, mIndex+54, mIndex+41, mIndex+40, mIndex+39, mIndex+38, mIndex+37, mIndex+36, mIndex+35, mIndex+22, mIndex+21, mIndex+20, mIndex+19, mIndex+18, mIndex+17, mIndex+16, mIndex+3, mIndex+2, mIndex+1, mIndex+76, mIndex+80, mIndex+72, mIndex+4]
                l_db3__aroundIndex += l_db4
                break
            }
        }
    }
    for (_, i__lninputInt) in l__db2_lnInputInt.enumerated() {
        for (v_2__index, v_3__elem) in l0_remaining.enumerated() {
            if v_3__elem == i__lninputInt {
                l0_remaining.remove(at:v_2__index)
                lnindex.append(i__lninputInt)
                l__sqare[Int(i__lninputInt/19)][i__lninputInt%19] = "n"
                nIndex = i__lninputInt
                l_db4 = [nIndex-60, nIndex-59, nIndex-58, nIndex-57, nIndex-56, nIndex-55, nIndex-54, nIndex-41, nIndex-40, nIndex-39, nIndex-38, nIndex-37, nIndex-36, nIndex-35, nIndex-22, nIndex-21, nIndex-20, nIndex-19, nIndex-18, nIndex-17, nIndex-16,nIndex-3, nIndex-2, nIndex-1, nIndex-76, nIndex-80, nIndex-72, nIndex-4, nIndex+60, nIndex+59, nIndex+58, nIndex+57, nIndex+56, nIndex+55, nIndex+54, nIndex+41, nIndex+40, nIndex+39, nIndex+38, nIndex+37, nIndex+36, nIndex+35, nIndex+22, nIndex+21, nIndex+20, nIndex+19, nIndex+18, nIndex+17, nIndex+16, nIndex+3, nIndex+2, nIndex+1, nIndex+76, nIndex+80, nIndex+72, nIndex+4]
                l_db3__aroundIndex += l_db4
                break
            }
        }
    }
    if var__db1_mode == "func_e__countWinTimes" {
        if !l0_remaining.contains(var__db4_next[1]) {
            return (-100, -100)
        }
        for (v_2__index, v_3__elem) in l0_remaining.enumerated() {
            if v_3__elem == var__db4_next[1] {
                l0_remaining.remove(at:v_2__index)
                lnindex.append(v_3__elem)
                l__sqare[Int(v_3__elem/19)][v_3__elem%19] = "n"
                if func_ifWin(var_a__position:[Int(v_3__elem/19), v_3__elem%19], obj:"n", l__sqare:l__sqare) == "n" {
                    if var__db4_next[0] == 1 {
                        return (1, 1) }
                    if var__db4_next[0] == 0 {
                        return (0, 1) } }
                nIndex = v_3__elem
                l_db4 = [nIndex-60, nIndex-59, nIndex-58, nIndex-57, nIndex-56, nIndex-55, nIndex-54, nIndex-41, nIndex-40, nIndex-39, nIndex-38, nIndex-37, nIndex-36, nIndex-35, nIndex-22, nIndex-21, nIndex-20, nIndex-19, nIndex-18, nIndex-17, nIndex-16,nIndex-3, nIndex-2, nIndex-1, nIndex-76, nIndex-80, nIndex-72, nIndex-4, nIndex+60, nIndex+59, nIndex+58, nIndex+57, nIndex+56, nIndex+55, nIndex+54, nIndex+41, nIndex+40, nIndex+39, nIndex+38, nIndex+37, nIndex+36, nIndex+35, nIndex+22, nIndex+21, nIndex+20, nIndex+19, nIndex+18, nIndex+17, nIndex+16, nIndex+3, nIndex+2, nIndex+1, nIndex+76, nIndex+80, nIndex+72, nIndex+4]
                l_db3__aroundIndex += l_db4
                break
            }
        }
    }
    while i < 362 {
        if l0_remaining != [] {
//            l_db3__aroundIndex = Array(Set(l_db3__aroundIndex))
            while !l0_remaining.contains(mIndex) {
                mIndex = l_db3__aroundIndex[random()%(l_db3__aroundIndex.count)]
            }
            for (v_2__index, v_3__elem) in l0_remaining.enumerated() {
                if v_3__elem == mIndex {
                    l0_remaining.remove(at:v_2__index)
                    break
                }
            }
            lmindex.append(mIndex)
            l__sqare[Int(mIndex/19)][mIndex%19] = "m"
            l_db4 = [mIndex-60, mIndex-59, mIndex-58, mIndex-57, mIndex-56, mIndex-55, mIndex-54, mIndex-41, mIndex-40, mIndex-39, mIndex-38, mIndex-37, mIndex-36, mIndex-35, mIndex-22, mIndex-21, mIndex-20, mIndex-19, mIndex-18, mIndex-17, mIndex-16,mIndex-3, mIndex-2, mIndex-1, mIndex-76, mIndex-80, mIndex-72, mIndex-4, mIndex+60, mIndex+59, mIndex+58, mIndex+57, mIndex+56, mIndex+55, mIndex+54, mIndex+41, mIndex+40, mIndex+39, mIndex+38, mIndex+37, mIndex+36, mIndex+35, mIndex+22, mIndex+21, mIndex+20, mIndex+19, mIndex+18, mIndex+17, mIndex+16, mIndex+3, mIndex+2, mIndex+1, mIndex+76, mIndex+80, mIndex+72, mIndex+4]
            l_db3__aroundIndex += l_db4
            if func_ifWin(var_a__position:[Int(mIndex/19), mIndex%19], obj:"m", l__sqare:l__sqare) == "m" {
                if var__db1_mode == "func_e__countWinTimes" {
                    if var__db4_next[0] == 0 {
                        return (1, 1) }
                    if var__db4_next[0] == 1 {
                        return (0, 1) } }
                print()
                print("m wins the match!    ["+String(Int(mIndex/19))+", \(mIndex%19)]")
                print("\(l__sqare[0])\n\(l__sqare[1])\n\(l__sqare[2])\n\(l__sqare[3])\n\(l__sqare[4])\n\(l__sqare[5])\n\(l__sqare[6])\n\(l__sqare[7])\n\(l__sqare[8])\n\(l__sqare[9])\n\(l__sqare[10])\n\(l__sqare[11])\n\(l__sqare[12])\n\(l__sqare[13])\n\(l__sqare[14])\n\(l__sqare[15])\n\(l__sqare[16])\n\(l__sqare[17])\n\(l__sqare[18])")
                print()
                return (0, 0)
                }
            }
        if l0_remaining != [] {
//            l_db3__aroundIndex = Array(Set(l_db3__aroundIndex))
            while !l0_remaining.contains(nIndex) {
                nIndex = l_db3__aroundIndex[random()%(l_db3__aroundIndex.count)]
            }
            for (v_2__index, v_3__elem) in l0_remaining.enumerated() {
                if v_3__elem == nIndex {
                    l0_remaining.remove(at:v_2__index)
                    break
                }
            }
            lnindex.append(nIndex)
            l__sqare[Int(nIndex/19)][nIndex%19] = "n"
            l_db4 = [nIndex-60, nIndex-59, nIndex-58, nIndex-57, nIndex-56, nIndex-55, nIndex-54, nIndex-41, nIndex-40, nIndex-39, nIndex-38, nIndex-37, nIndex-36, nIndex-35, nIndex-22, nIndex-21, nIndex-20, nIndex-19, nIndex-18, nIndex-17, nIndex-16,nIndex-3, nIndex-2, nIndex-1, nIndex-76, nIndex-80, nIndex-72, nIndex-4, nIndex+60, nIndex+59, nIndex+58, nIndex+57, nIndex+56, nIndex+55, nIndex+54, nIndex+41, nIndex+40, nIndex+39, nIndex+38, nIndex+37, nIndex+36, nIndex+35, nIndex+22, nIndex+21, nIndex+20, nIndex+19, nIndex+18, nIndex+17, nIndex+16, nIndex+3, nIndex+2, nIndex+1, nIndex+76, nIndex+80, nIndex+72, nIndex+4]
            l_db3__aroundIndex += l_db4
            if func_ifWin(var_a__position:[Int(nIndex/19), nIndex%19], obj:"n", l__sqare:l__sqare) == "n" {
                if var__db1_mode == "func_e__countWinTimes" {
                    if var__db4_next[0] == 1 {
                        return (1, 1)
                        }
                    if var__db4_next[0] == 0 {
                        return (0, 1)
                        }
                    }
                print()
                print("n wins the match!    ["+String(Int(nIndex/19))+", \(nIndex%19)]")
                print("\(l__sqare[0])\n\(l__sqare[1])\n\(l__sqare[2])\n\(l__sqare[3])\n\(l__sqare[4])\n\(l__sqare[5])\n\(l__sqare[6])\n\(l__sqare[7])\n\(l__sqare[8])\n\(l__sqare[9])\n\(l__sqare[10])\n\(l__sqare[11])\n\(l__sqare[12])\n\(l__sqare[13])\n\(l__sqare[14])\n\(l__sqare[15])\n\(l__sqare[16])\n\(l__sqare[17])\n\(l__sqare[18])")
                print()
                return (0, 0)
            }
        }
        i += 1
    }
    return (0, 0)
}

func func_c__transformArrayInputToInt (var_dc1__lmInput : [[Int]] = [[-1, -1]], var_dc2__lnInput : [[Int]] = [[-1, -1]]) -> ([Int], [Int]) {
    
    var lmInputInt = [Int]()
    var lnInputInt = [Int]()

    if var_dc1__lmInput == [[-1, -1]] {
        lmInputInt = [-1]
    } else {
        for v_5__elem in var_dc1__lmInput {
            lmInputInt.append(v_5__elem[0]*19 + v_5__elem[1])
        }
    }
    if var_dc2__lnInput == [[-1, -1]] {
        lnInputInt = [-1]
    } else {
        for v_5__elem in var_dc2__lnInput {
            lnInputInt.append(v_5__elem[0]*19 + v_5__elem[1])
        }
    }
    return (lmInputInt, lnInputInt)
}

func func_e__countWinTimes (var__de1_sum : Int, var__de2_obj : Character, var__de3_lmInputInt : [Int], var__de4_lnInputInt : [Int], var__de5_ifAutoSave : Bool = true) {
    var l__de1 = Array(repeating: 0, count: 361)
    var l__de2_next = [Int]()
    if var__de2_obj == "m" {
        l__de2_next.append(0);
    } else if var__de2_obj == "n" {
        l__de2_next.append(1);
    } else {
        print("\(var__de2_obj) goes wrong.");
        return
    }
    l__de2_next.append(-1)
    let i__de5 = var__de1_sum*361
    var i__de6 = 0
    var i__de8 = 0.0
    var v__de1 = 0
    var v__de2 = 0
    print(var__de3_lmInputInt, var__de4_lnInputInt)
    if var__de3_lmInputInt.count == var__de4_lnInputInt.count {
        for i__de2 in 0..<var__de1_sum {
        print("    "+String(i__de6+1)+"    /    "+String(i__de5)+"       "+String(i__de2)+"  done              "+"\r")
            for i__de1 in 0..<361 {
                i__de6 = i__de1+i__de2*361
                l__de2_next[1] = i__de1
//                (v__de1, v__de2) = func_b__perRoundnFirst(var__db1_mode:"func_e__countWinTimes", var__db2_ifEnvAndroid:false, l__db1_lmInputInt:var__de3_lmInputInt, l__db2_lnInputInt:var__de4_lnInputInt, var__db4_next:l__de2_next)
                if v__de2 == 1 {
                    l__de1[l__de2_next[1]] += v__de1 
                } else {
                    l__de1[l__de2_next[1]] = -1  
                }
            }      
        }
    } else if var__de3_lmInputInt.count == var__de4_lnInputInt.count+1 {
        for i__de4 in 0..<var__de1_sum {
        print("    "+String(i__de6+1)+"    /    "+String(i__de5)+"       "+String(i__de4)+"  done"+"\r")
            for i__de3 in 0..<361 {
                i__de6 = i__de3+i__de4*361
                l__de2_next[1] = i__de3
                (v__de1, v__de2) = func_b__perRound(var__db1_mode:"func_e__countWinTimes", var__db2_ifEnvAndroid:false, l__db1_lmInputInt:var__de3_lmInputInt, l__db2_lnInputInt:var__de4_lnInputInt, var__db4_next:l__de2_next)
                if v__de2 == 1 {
                    l__de1[l__de2_next[1]] += v__de1 
                } else {
                    l__de1[l__de2_next[1]] = -1  
                }
            }
/*
            let filePath = "5.log.txt"
            var info = "\(i__de4+1)\n\(l__de1[0...18])\n\(l__de1[19...37])\n\(l__de1[38...56])\n\(l__de1[57...75])\n\(l__de1[76...94])\n\(l__de1[95...113])\n\(l__de1[114...132])\n\(l__de1[133...151])\n\(l__de1[152...170])\n\(l__de1[171...189])\n\(l__de1[190...208])\n\(l__de1[209...227])\n\(l__de1[228...246])\n\(l__de1[247...265])\n\(l__de1[266...284])\n\(l__de1[285...303])\n\(l__de1[304...322])\n\(l__de1[323...341])\n\(l__de1[342...360])"
            if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
                let fileURL = dir.appendingPathComponent(filePath)
                do {
                    try info.write(to: filePath, encoding: .utf8)
                }
            }
            fflush(info)
*/
        }
    } else {
        print("WTF???")
        print()
        print() 
    }
    print("    "+String(var__de1_sum*361)+"    /    "+String(var__de1_sum*361)+"       "+String(var__de1_sum)+"  done"+"\r")
    print(l__de1)
    for i__de7 in l__de1 {
        if i__de7 != -1 {
            i__de8 += Double(i__de7)
        }
    }  
    print(String(i__de8/Double((var__de1_sum * (361 - var__de3_lmInputInt.count - var__de4_lnInputInt.count)))))
    print()
}



var lmInput = [[9, 9], [10, 9], [11, 9]]
var lnInput = [[9, 8], [18, 18]]
var (lmInputInt, lnInputInt) = func_c__transformArrayInputToInt(var_dc1__lmInput:lmInput, var_dc2__lnInput:lnInput)

func_b__perRound(l__db1_lmInputInt:lmInputInt, l__db2_lnInputInt:lnInputInt)

func_e__countWinTimes(var__de1_sum:10, var__de2_obj:"m", var__de3_lmInputInt:lmInputInt, var__de4_lnInputInt:lnInputInt)

