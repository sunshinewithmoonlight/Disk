import Glibc
import Foundation

var listCB = [Int]()
for listCB_ in 0..<361 {
    listCB.append(listCB_) }
let listCB_show_ = [Character](repeating: " ", count: 19)
var listCB_show = [[Character]](repeating: listCB_show_, count: 19)
var aroundIndexes = [Int]()
var listCB_remaining = listCB


func ifWin (var_a_position : [Int], obj : Character, listCB_show : [[Character]]) -> Character {
    var ifWin1_leftMove = 0
    var ifWin2_lenth = 0
    var ifWin3_leftEdge = 0
    var ifWin4_rightEdge = 0
    while true {
        if listCB_show[var_a_position[0]][var_a_position[1] - ifWin1_leftMove] != obj { break }
        ifWin1_leftMove += 1
        ifWin3_leftEdge += 1
        if var_a_position[1] - ifWin3_leftEdge < 0 { break } }
    ifWin1_leftMove -= 1
    while true {
        if listCB_show[var_a_position[0]][var_a_position[1] - ifWin1_leftMove + ifWin2_lenth] != obj { break }
        ifWin2_lenth += 1
        ifWin4_rightEdge += 1
        if var_a_position[1] - ifWin1_leftMove + ifWin2_lenth > 18 { break } }
    if ifWin2_lenth >= 5 { return obj }
    ifWin1_leftMove = 0
    ifWin2_lenth = 0
    ifWin3_leftEdge = 0
    ifWin4_rightEdge = 0
    while true {
        if listCB_show[var_a_position[0] - ifWin1_leftMove][var_a_position[1]] != obj { break }
        ifWin1_leftMove += 1
        ifWin3_leftEdge += 1
        if var_a_position[0] - ifWin1_leftMove < 0 { break } }
    ifWin1_leftMove -= 1
    while true {
        if listCB_show[var_a_position[0] - ifWin1_leftMove + ifWin2_lenth][var_a_position[1]] != obj { break }
        ifWin2_lenth += 1
        ifWin4_rightEdge += 1
        if var_a_position[0] - ifWin1_leftMove + ifWin2_lenth > 18 { break } }
    if ifWin2_lenth >= 5 { return obj }
    ifWin1_leftMove = 0
    ifWin2_lenth = 0
    ifWin3_leftEdge = 0
    ifWin4_rightEdge = 0
    while true {
        if listCB_show[var_a_position[0] - ifWin1_leftMove][var_a_position[1] - ifWin1_leftMove] != obj { break }
        ifWin1_leftMove += 1
        ifWin3_leftEdge += 1
        if var_a_position[0] - ifWin1_leftMove < 0 || var_a_position[1] - ifWin1_leftMove < 0 { break } }
    ifWin1_leftMove -= 1
    while true {
        if listCB_show[var_a_position[0] - ifWin1_leftMove + ifWin2_lenth][var_a_position[1] - ifWin1_leftMove + ifWin2_lenth] != obj { break }
        ifWin2_lenth += 1
        ifWin4_rightEdge += 1
        if var_a_position[0] - ifWin1_leftMove + ifWin2_lenth > 18 || var_a_position[1] - ifWin1_leftMove + ifWin2_lenth > 18 { break } }
    if ifWin2_lenth >= 5 { return obj }        
    ifWin1_leftMove = 0
    ifWin2_lenth = 0
    ifWin3_leftEdge = 0
    ifWin4_rightEdge = 0
    while true {
        if listCB_show[var_a_position[0] + ifWin1_leftMove][var_a_position[1] - ifWin1_leftMove] != obj { break }
        ifWin1_leftMove += 1
        ifWin3_leftEdge += 1
        if var_a_position[0] + ifWin1_leftMove > 18 || var_a_position[1] - ifWin1_leftMove < 0 { break } }
    ifWin1_leftMove -= 1
    while true {
        if listCB_show[var_a_position[0] + ifWin1_leftMove - ifWin2_lenth][var_a_position[1] - ifWin1_leftMove + ifWin2_lenth] != obj { break }
        ifWin2_lenth += 1
        ifWin4_rightEdge += 1
        if (var_a_position[0] + ifWin1_leftMove - ifWin2_lenth < 0) || (var_a_position[1] - ifWin1_leftMove + ifWin2_lenth) > 18 { break } }
    if ifWin2_lenth >= 5 { return obj }
    return "\0"
}

@discardableResult
func perRound (perRound_mode:String = "Normal", perRound_obj:Character = "m", perRound_next:[Int] = [0, -1], listmIndex_input:[Int] = listmIndex_input, listnIndex_input:[Int] = listnIndex_input, listCB:[Int] = listCB, listCB_show:[[Character]] = listCB_show, aroundIndexes:[Int] = aroundIndexes) -> (Int, Int) {
    var i_doTime = 0
    var mnIndex = -1
    var listmIndex_f = [Int]()
    var listnIndex_f = [Int]()
    var listCB_show_f = listCB_show
    var listCB_remaining_f = listCB
    var aroundIndexes_f = aroundIndexes
    var aroundIndexes__f = [Int]()

    if perRound_mode == "func_e_countWinTimes" {
        if !listCB_remaining_f.contains(perRound_next[1]) {
            return (-100, -100)
        }
        for (listCB_remaining__f, mnIndex) in listCB_remaining_f.enumerated() {
            if mnIndex == perRound_next[1] {
                listCB_remaining_f.remove(at:listCB_remaining__f)
                listnIndex_f.append(mnIndex)
                listCB_show_f[Int(mnIndex/19)][mnIndex%19] = "n"
                switch(mnIndex%19){
                    case 0:
                    aroundIndexes__f = [mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57, mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58, mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59, mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60, mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 1:
                    aroundIndexes__f = [mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 2:
                    aroundIndexes__f = [mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 3:
                    aroundIndexes__f = [mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 15:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60];
                    break;
                    case 16:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59];
                    break;
                    case 17:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58];
                    break;
                    case 18:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57];
                    break;
                    default:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                }
                aroundIndexes_f += aroundIndexes__f
                if ifWin(var_a_position:[Int(mnIndex/19), mnIndex%19], obj:"n", listCB_show:listCB_show_f) == "n" {
                    if perRound_next[0] == 1 {
                        return (1, 1) }
                    if perRound_next[0] == 0 {
                        return (0, 1) } }
                break
            }
        }
    }
    while i_doTime < 362 {
        if listCB_remaining_f != [] {
            //aroundIndexes__f = Array(Set(aroundIndexes_f))
            while !listCB_remaining_f.contains(mnIndex) {
                mnIndex = aroundIndexes__f[random()%(aroundIndexes_f.count)]
            }
            for (listCB_remaining__f, listCB_remaining___f) in listCB_remaining_f.enumerated() {
                if listCB_remaining___f == mnIndex {
                    listCB_remaining_f.remove(at:listCB_remaining__f)
                    break
                }
            }
            listmIndex_f.append(mnIndex)
            listCB_show_f[Int(mnIndex/19)][mnIndex%19] = "m"
            switch(mnIndex%19){
                case 0:
                aroundIndexes__f = [mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57, mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58, mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59, mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60, mnIndex-53, mnIndex+4, mnIndex+61];
                break;
                case 1:
                aroundIndexes__f = [mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                break;
                case 2:
                aroundIndexes__f = [mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                break;
                case 3:
                aroundIndexes__f = [mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                break;
                case 15:
                aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60];
                break;
                case 16:
                aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59];
                break;
                case 17:
                aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58];
                break;
                case 18:
                aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57];
                break;
                default:
                aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                break;
            }
            aroundIndexes_f += aroundIndexes__f
            if ifWin(var_a_position:[Int(mnIndex/19), mnIndex%19], obj:"m", listCB_show:listCB_show_f) == "m" {
                if perRound_mode == "func_e_countWinTimes" {
                    if perRound_next[0] == 0 {
                        return (1, 1) }
                    if perRound_next[0] == 1 {
                        return (0, 1) } }
                print()
                print("m wins the match!    ["+String(Int(mnIndex/19))+", \(mnIndex%19)]")
                print("\(listCB_show_f[0])\n\(listCB_show_f[1])\n\(listCB_show_f[2])\n\(listCB_show_f[3])\n\(listCB_show_f[4])\n\(listCB_show_f[5])\n\(listCB_show_f[6])\n\(listCB_show_f[7])\n\(listCB_show_f[8])\n\(listCB_show_f[9])\n\(listCB_show_f[10])\n\(listCB_show_f[11])\n\(listCB_show_f[12])\n\(listCB_show_f[13])\n\(listCB_show_f[14])\n\(listCB_show_f[15])\n\(listCB_show_f[16])\n\(listCB_show_f[17])\n\(listCB_show_f[18])")
                print()
                return (0, 0)
                }
            }
        if listCB_remaining != [] {
            //aroundIndexes__f = Array(Set(aroundIndex))
            while !listCB_remaining_f.contains(mnIndex) {
                mnIndex = aroundIndexes__f[random()%(aroundIndexes_f.count)]
            }
            for (listCB_remaining__f, listCB_remaining___f) in listCB_remaining_f.enumerated() {
                if listCB_remaining___f == mnIndex {
                    listCB_remaining_f.remove(at:listCB_remaining__f)
                    break
                }
            }
            listnIndex_f.append(mnIndex)
            listCB_show_f[Int(mnIndex/19)][mnIndex%19] = "n"
            switch(mnIndex%19){
                case 0:
                aroundIndexes__f = [mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57, mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58, mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59, mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60, mnIndex-53, mnIndex+4, mnIndex+61];
                break;
                case 1:
                aroundIndexes__f = [mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                break;
                case 2:
                aroundIndexes__f = [mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                break;
                case 3:
                aroundIndexes__f = [mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                break;
                case 15:
                aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60];
                break;
                case 16:
                aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59];
                break;
                case 17:
                aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58];
                break;
                case 18:
                aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57];
                break;
                default:
                aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                break;
            }
            aroundIndexes_f += aroundIndexes__f
            if ifWin(var_a_position:[Int(mnIndex/19), mnIndex%19], obj:"n", listCB_show:listCB_show_f) == "n" {
                if perRound_mode == "func_e_countWinTimes" {
                    if perRound_next[0] == 1 {
                        return (1, 1)
                        }
                    if perRound_next[0] == 0 {
                        return (0, 1)
                        }
                    }
                print()
                print("n wins the match!    ["+String(Int(mnIndex/19))+", \(mnIndex%19)]")
                print("\(listCB_show_f[0])\n\(listCB_show_f[1])\n\(listCB_show_f[2])\n\(listCB_show_f[3])\n\(listCB_show_f[4])\n\(listCB_show_f[5])\n\(listCB_show_f[6])\n\(listCB_show_f[7])\n\(listCB_show_f[8])\n\(listCB_show_f[9])\n\(listCB_show_f[10])\n\(listCB_show_f[11])\n\(listCB_show_f[12])\n\(listCB_show_f[13])\n\(listCB_show_f[14])\n\(listCB_show_f[15])\n\(listCB_show_f[16])\n\(listCB_show_f[17])\n\(listCB_show_f[18])")
                print()
                return (0, 0)
            }
        }
        i_doTime += 1
    }
    return (0, 0)
}

func tranToIntList (tranToIntList_m : [[Int]] = [[-1, -1]], tranToIntList_n : [[Int]] = [[-1, -1]], listmIndex_input_:[Int] = [], listnIndex_input_:[Int] = [], listCB:[Int] = listCB, listCB_show:[[Character]] = listCB_show, aroundIndexes:[Int] = aroundIndexes) -> ([Int], [Int], [[Character]], [Int], [Int]){
    
    var listmIndex_input__f = listmIndex_input_
    var listnIndex_input__f = listnIndex_input_
    var listmIndex_input_f = [Int]()
    var listnIndex_input_f = [Int]()
    var listCB_show_f = listCB_show
    var listCB_remaining_f = listCB
    var aroundIndexes_f = aroundIndexes
    var aroundIndexes__f = [Int]()

    if !(tranToIntList_m == [[-1, -1]]) {
        for tranToIntList_m_ in tranToIntList_m {
            listmIndex_input__f.append(tranToIntList_m_[0]*19 + tranToIntList_m_[1])
        }
    } else {
        listmIndex_input__f = []
    }
    if !(tranToIntList_n == [[-1, -1]]) {
        for tranToIntList1_n_ in tranToIntList_n {
            listnIndex_input__f.append(tranToIntList1_n_[0]*19 + tranToIntList1_n_[1])
        }
    } else {
        listnIndex_input__f = []
    }

    for (_, mnIndex) in listmIndex_input_.enumerated() {
        var i = 0
        while (i < listCB_remaining_f.count && i > -1) {
            if (mnIndex == mnIndex) {
                listmIndex_input_f.append(mnIndex)
                listCB_show_f[mnIndex/19][mnIndex%19] = "m"
                listCB_remaining_f.remove(at:i)
                i -= 1
                switch(mnIndex%19){
                    case 0:
                    aroundIndexes__f = [mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57, mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58, mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59, mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60, mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 1:
                    aroundIndexes__f = [mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 2:
                    aroundIndexes__f = [mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 3:
                    aroundIndexes__f = [mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 15:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60];
                    break;
                    case 16:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59];
                    break;
                    case 17:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58];
                    break;
                    case 18:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57];
                    break;
                    default:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                }
                aroundIndexes_f += aroundIndexes__f
            }
            i += 1
        }
    }
    for (_, mnIndex) in listnIndex_input__f.enumerated() {
        var i = 0
        while (i < listCB_remaining_f.count && i > -1) {
            if (mnIndex == mnIndex) {
                listnIndex_input_f.append(mnIndex)
                listCB_show_f[mnIndex/19][mnIndex%19] = "n"
                listCB_remaining_f.remove(at:i)
                i -= 1
                switch(mnIndex%19){
                    case 0:
                    aroundIndexes__f = [mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57, mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58, mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59, mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60, mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 1:
                    aroundIndexes__f = [mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 2:
                    aroundIndexes__f = [mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 3:
                    aroundIndexes__f = [mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                    case 15:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60];
                    break;
                    case 16:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59];
                    break;
                    case 17:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58];
                    break;
                    case 18:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57];
                    break;
                    default:
                    aroundIndexes__f = [mnIndex-80, mnIndex-4, mnIndex+72 , mnIndex-60, mnIndex-41, mnIndex-22, mnIndex-3, mnIndex+16, mnIndex+5, mnIndex+54 , mnIndex-59, mnIndex-40, mnIndex-21, mnIndex-2, mnIndex+17, mnIndex+36, mnIndex+55 , mnIndex-58, mnIndex-39, mnIndex-20, mnIndex-1, mnIndex+18, mnIndex+37, mnIndex+56 , mnIndex-57, mnIndex-38, mnIndex-19, mnIndex+19, mnIndex+38, mnIndex+57 , mnIndex-56, mnIndex-37, mnIndex-18, mnIndex+1, mnIndex+20, mnIndex+39, mnIndex+58 , mnIndex-55, mnIndex-36, mnIndex-17, mnIndex+2, mnIndex+21, mnIndex+40, mnIndex+59 , mnIndex-54, mnIndex-35, mnIndex-16, mnIndex+3, mnIndex+22, mnIndex+41, mnIndex+60 , mnIndex-53, mnIndex+4, mnIndex+61];
                    break;
                }
                aroundIndexes_f += aroundIndexes__f
            }
            i += 1
        }
    }

    return (listmIndex_input_f, listnIndex_input_f, listCB_show_f, listCB_remaining_f, aroundIndexes_f)
}


var listm_input = [[9, 9], [10, 9], [11, 9]]
var listn_input = [[8, 8], [11, 11]]
var (listmIndex_input, listnIndex_input, c, d, e) = tranToIntList(tranToIntList_m:listm_input, tranToIntList_n:listn_input)
(listCB_show, listCB_remaining, aroundIndexes) = (c, d, e)

perRound()