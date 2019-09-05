# -*- encoding:utf-8 -*-

import matplotlib.pyplot as plt
import sys
import numpy as np


l0 = []
for i__l0x in range (0, 19):
    for i__l0y in range (0, 19):
        l0.append(tuple((i__l0x, i__l0y)))


def ifWin (posi_l1, obj, l1):

    i__da1_leftNum = 0
    i__da2_lenthFromLeft = 0
    i__da3_leftEdge = 0
    i__da4_rightEdge = 0

    while True:
        if l1[posi_l1[0]][posi_l1[1] - i__da1_leftNum] != obj: break
        i__da1_leftNum += 1
        i__da3_leftEdge += 1
        if posi_l1[1] - i__da3_leftEdge < 0: break
    i__da1_leftNum -= 1
    while True:
        if l1[posi_l1[0]][posi_l1[1] - i__da1_leftNum + i__da2_lenthFromLeft] != obj: break
        i__da2_lenthFromLeft += 1
        i__da4_rightEdge += 1
        if posi_l1[1] - i__da1_leftNum + i__da2_lenthFromLeft > 18: break
    if i__da2_lenthFromLeft >= 5:
        return obj

    i__da1_leftNum = 0
    i__da2_lenthFromLeft = 0
    i__da3_leftEdge = 0
    i__da4_rightEdge = 0

    while True:
        if l1[posi_l1[0] - i__da1_leftNum][posi_l1[1]] != obj: break
        i__da1_leftNum += 1
        i__da3_leftEdge += 1
        if posi_l1[0] - i__da1_leftNum < 0: break
    i__da1_leftNum -= 1
    while True:
        if l1[posi_l1[0] - i__da1_leftNum + i__da2_lenthFromLeft][posi_l1[1]] != obj: break
        i__da2_lenthFromLeft += 1
        i__da4_rightEdge += 1
        if posi_l1[0] - i__da1_leftNum + i__da2_lenthFromLeft > 18: break
    if i__da2_lenthFromLeft >= 5:
        return obj

    i__da1_leftNum = 0
    i__da2_lenthFromLeft = 0
    i__da3_leftEdge = 0
    i__da4_rightEdge = 0

    while True:
        if l1[posi_l1[0] - i__da1_leftNum][posi_l1[1] - i__da1_leftNum] != obj: break
        i__da1_leftNum += 1
        i__da3_leftEdge += 1
        if posi_l1[0] - i__da1_leftNum < 0 or posi_l1[1] - i__da1_leftNum < 0: break
    i__da1_leftNum -= 1
    while True:
        if l1[posi_l1[0] - i__da1_leftNum + i__da2_lenthFromLeft][posi_l1[1] - i__da1_leftNum + i__da2_lenthFromLeft] != obj: break
        i__da2_lenthFromLeft += 1
        i__da4_rightEdge += 1
        if posi_l1[0] - i__da1_leftNum + i__da2_lenthFromLeft > 18 or posi_l1[1] - i__da1_leftNum + i__da2_lenthFromLeft > 18: break
    if i__da2_lenthFromLeft >= 5:
        return obj

    i__da1_leftNum = 0
    i__da2_lenthFromLeft = 0
    i__da3_leftEdge = 0
    i__da4_rightEdge = 0

    while True:
        if l1[posi_l1[0] + i__da1_leftNum][posi_l1[1] - i__da1_leftNum] != obj: break
        i__da1_leftNum += 1
        i__da3_leftEdge += 1
        if posi_l1[0] + i__da1_leftNum > 18 or posi_l1[1] - i__da1_leftNum < 0: break
    i__da1_leftNum -= 1
    while True:
        if l1[posi_l1[0] + i__da1_leftNum - i__da2_lenthFromLeft][posi_l1[1] - i__da1_leftNum + i__da2_lenthFromLeft] != obj: break
        i__da2_lenthFromLeft += 1
        i__da4_rightEdge += 1
        if (posi_l1[0] + i__da1_leftNum - i__da2_lenthFromLeft < 0) or (posi_l1[1] - i__da1_leftNum + i__da2_lenthFromLeft) > 18: break
    if i__da2_lenthFromLeft >= 6:
        return obj


def inputRandom_perRound (var__db1_mode="Normal", var__db2_ifEnvAndroid=False, l__db1_lmInput=[], l__db2_lnInput=[], var__db3_obj=None, var__db4_next=[None, None], l0=l0):


    i = 0
    l1 = []
    l1__1 = []
    for i__l11 in range (0, 19):
        for i__l12 in range (0, 19):
            l1__1.append("")
        l1.append(l1__1)
        l1__1 = []

    l0index = []
    for i__l0x in range (0,361):
        l0index.append(i__l0x)
    mIndex = None
    nIndex = None
    
    lm = []
    ln = []

    l__db3_aroundIndex = []
    l__db4 = []

    for i__lminput in l__db1_lmInput:
        mIndex = l0.index(i__lminput)
        l0index.remove(mIndex)
        lm.append(i__lminput)
        l1[i__lminput[0]][i__lminput[1]] = "m"
        l__db4 = [mIndex-60, mIndex-59, mIndex-58, mIndex-57, mIndex-56, mIndex-55, mIndex-54, mIndex-41, mIndex-40, mIndex-39, mIndex-38, mIndex-37, mIndex-36, mIndex-35, mIndex-22, mIndex-21, mIndex-20, mIndex-19, mIndex-18, mIndex-17, mIndex-16,mIndex-3, mIndex-2, mIndex-1, mIndex-76, mIndex-80, mIndex-72, mIndex-4, mIndex+60, mIndex+59, mIndex+58, mIndex+57, mIndex+56, mIndex+55, mIndex+54, mIndex+41, mIndex+40, mIndex+39, mIndex+38, mIndex+37, mIndex+36, mIndex+35, mIndex+22, mIndex+21, mIndex+20, mIndex+19, mIndex+18, mIndex+17, mIndex+16, mIndex+3, mIndex+2, mIndex+1, mIndex+76, mIndex+80, mIndex+72, mIndex+4]
        l__db3_aroundIndex += l__db4
##        l__db3_aroundIndex = list(set(l__db3_aroundIndex))
    for i__lninput in l__db2_lnInput:
        nIndex = l0.index(i__lninput)
        l0index.remove(nIndex)
        ln.append(i__lninput)
        l1[i__lninput[0]][i__lninput[1]] = "n"
        l__db4 = [nIndex-60, nIndex-59, nIndex-58, nIndex-57, nIndex-56, nIndex-55, nIndex-54, nIndex-41, nIndex-40, nIndex-39, nIndex-38, nIndex-37, nIndex-36, nIndex-35, nIndex-22, nIndex-21, nIndex-20, nIndex-19, nIndex-18, nIndex-17, nIndex-16,nIndex-3, nIndex-2, nIndex-1, nIndex-76, nIndex-80, nIndex-72, nIndex-4, nIndex+60, nIndex+59, nIndex+58, nIndex+57, nIndex+56, nIndex+55, nIndex+54, nIndex+41, nIndex+40, nIndex+39, nIndex+38, nIndex+37, nIndex+36, nIndex+35, nIndex+22, nIndex+21, nIndex+20, nIndex+19, nIndex+18, nIndex+17, nIndex+16, nIndex+3, nIndex+2, nIndex+1, nIndex+76, nIndex+80, nIndex+72, nIndex+4]
        l__db3_aroundIndex += l__db4
##        l__db3_aroundIndex = list(set(l__db3_aroundIndex))

    if var__db1_mode=="input_fromMiddle2":
        if var__db4_next[1] not in l0index:
            return None, None
        l0index.remove(var__db4_next[1])
        ln.append(l0[int(var__db4_next[1])])
        l1[int(l0[var__db4_next[1]][0])][int(l0[var__db4_next[1]][1])] = "n"
        objWin = ifWin(posi_l1=[int(l0[var__db4_next[1]][0]), int(l0[var__db4_next[1]][1])], obj="n", l1=l1)
        if objWin == "n":
            if var__db4_next[0] == "n":
                return 1, 1
            if var__db4_next[0] == "m":
                return 0, 1

    if lm == []:
        mIndex = 179
        m = (10, 10)
        l0index.remove(179)
        lm.append(m)
        l1[10][10] = "m"
        l__db4 = [mIndex-60, mIndex-59, mIndex-58, mIndex-57, mIndex-56, mIndex-55, mIndex-54, mIndex-41, mIndex-40, mIndex-39, mIndex-38, mIndex-37, mIndex-36, mIndex-35, mIndex-22, mIndex-21, mIndex-20, mIndex-19, mIndex-18, mIndex-17, mIndex-16,mIndex-3, mIndex-2, mIndex-1, mIndex-76, mIndex-80, mIndex-72, mIndex-4, mIndex+60, mIndex+59, mIndex+58, mIndex+57, mIndex+56, mIndex+55, mIndex+54, mIndex+41, mIndex+40, mIndex+39, mIndex+38, mIndex+37, mIndex+36, mIndex+35, mIndex+22, mIndex+21, mIndex+20, mIndex+19, mIndex+18, mIndex+17, mIndex+16, mIndex+3, mIndex+2, mIndex+1, mIndex+76, mIndex+80, mIndex+72, mIndex+4]
        l__db3_aroundIndex += l__db4



    while i < 362:
        if l0index != []:
            while mIndex not in l0index:
                mIndex = np.random.choice(l__db3_aroundIndex)
            m = l0[int(mIndex)]
            l0index.remove(mIndex)
            lm.append(m)
            m0 = int(m[0])
            m1 = int(m[1])
            l1[m0][m1] = "m"
            l__db4 = [mIndex-60, mIndex-59, mIndex-58, mIndex-57, mIndex-56, mIndex-55, mIndex-54, mIndex-41, mIndex-40, mIndex-39, mIndex-38, mIndex-37, mIndex-36, mIndex-35, mIndex-22, mIndex-21, mIndex-20, mIndex-19, mIndex-18, mIndex-17, mIndex-16,mIndex-3, mIndex-2, mIndex-1, mIndex-76, mIndex-80, mIndex-72, mIndex-4, mIndex+60, mIndex+59, mIndex+58, mIndex+57, mIndex+56, mIndex+55, mIndex+54, mIndex+41, mIndex+40, mIndex+39, mIndex+38, mIndex+37, mIndex+36, mIndex+35, mIndex+22, mIndex+21, mIndex+20, mIndex+19, mIndex+18, mIndex+17, mIndex+16, mIndex+3, mIndex+2, mIndex+1, mIndex+76, mIndex+80, mIndex+72, mIndex+4]
            l__db3_aroundIndex += l__db4
##            l__db3_aroundIndex = list(set(l__db3_aroundIndex))
            
            objWin = ifWin(posi_l1=m, obj="m", l1=l1)
            if objWin == "m":
                if var__db1_mode=="input_fromMiddle2":
                    if var__db4_next[0] == "m":
                        return 1, 1
                    if var__db4_next[0] == "n":
                        return 0, 1

                print()
                print(m)
                print("m wins the match!")
                print()
                if var__db2_ifEnvAndroid == False:
                    lm_X = []
                    lm_Y = []
                    for im__ in range (0, len(lm)):
                        lm_X.append(lm[im__][0])
                        lm_Y.append(lm[im__][1])
                    fig, axs = plt.subplots()
                    plt.xlim(-1, 19)
                    plt.ylim(-1, 19)
                    axs.scatter(lm_X, lm_Y)
                    p_xlim = np.arange(-1, 19, 1)
                    p_ylim = np.arange(-1, 19, 1)
                    plt.xticks(p_xlim)
                    plt.yticks(p_ylim)
                    plt.grid()
                    plt.show()

                return

        if l0index != []:
            while nIndex not in l0index:
                nIndex = np.random.choice(l__db3_aroundIndex)
            n = l0[int(nIndex)]
            l0index.remove(nIndex)
            ln.append(n)
            n0 = int(n[0])
            n1 = int(n[1])
            l1[n0][n1] = "n"
            l__db4 = [nIndex-60, nIndex-59, nIndex-58, nIndex-57, nIndex-56, nIndex-55, nIndex-54, nIndex-41, nIndex-40, nIndex-39, nIndex-38, nIndex-37, nIndex-36, nIndex-35, nIndex-22, nIndex-21, nIndex-20, nIndex-19, nIndex-18, nIndex-17, nIndex-16,nIndex-3, nIndex-2, nIndex-1, nIndex-76, nIndex-80, nIndex-72, nIndex-4, nIndex+60, nIndex+59, nIndex+58, nIndex+57, nIndex+56, nIndex+55, nIndex+54, nIndex+41, nIndex+40, nIndex+39, nIndex+38, nIndex+37, nIndex+36, nIndex+35, nIndex+22, nIndex+21, nIndex+20, nIndex+19, nIndex+18, nIndex+17, nIndex+16, nIndex+3, nIndex+2, nIndex+1, nIndex+76, nIndex+80, nIndex+72, nIndex+4]
            l__db3_aroundIndex += l__db4
##            l__db3_aroundIndex = list(set(l__db3_aroundIndex))
            
            objWin = ifWin(posi_l1=n, obj="n", l1=l1)
            if objWin == "n":
                if var__db1_mode=="input_fromMiddle2":
                    if var__db4_next[0] == "n":
                        return 1, 1
                    if var__db4_next[0] == "m":
                        return 0, 1

                print()
                print(n)
                print("n wins the match!")
                print()
                if var__db2_ifEnvAndroid == False:
                    ln_X = []
                    ln_Y = []
                    for in__ in range (0, len(ln)):
                        ln_X.append(ln[in__][0])
                        ln_Y.append(ln[in__][1])
                    fig, axs = plt.subplots()
                    plt.xlim(-1, 19)
                    plt.ylim(-1, 19)
                    axs.scatter(ln_X, ln_Y)
                    p_xlim = np.arange(-1, 19, 1)
                    p_ylim = np.arange(-1, 19, 1)
                    plt.xticks(p_xlim)
                    plt.yticks(p_ylim)
                    plt.grid()
                    plt.show()

                return

        i += 1


def inputRandom_perRound_nFirst (var__db1_mode="Normal", var__db2_ifEnvAndroid=False, l__db1_lmInput=[], l__db2_lnInput=[], var__db3_obj=None, var__db4_next=[None, None], l0=l0):


    i = 0
    l1 = []
    l1__1 = []
    for i__l11 in range (0, 19):
        for i__l12 in range (0, 19):
            l1__1.append("")
        l1.append(l1__1)
        l1__1 = []

    l0index = []
    for i__l0x in range (0,361):
        l0index.append(i__l0x)
    mIndex = None
    nIndex = None
    
    lm = []
    ln = []

    l__db3_aroundIndex = []
    l__db4 = []

    for i__lminput in l__db1_lmInput:
        mIndex = l0.index(i__lminput)
        l0index.remove(mIndex)
        lm.append(i__lminput)
        l1[i__lminput[0]][i__lminput[1]] = "m"
        l__db4 = [mIndex-60, mIndex-59, mIndex-58, mIndex-57, mIndex-56, mIndex-55, mIndex-54, mIndex-41, mIndex-40, mIndex-39, mIndex-38, mIndex-37, mIndex-36, mIndex-35, mIndex-22, mIndex-21, mIndex-20, mIndex-19, mIndex-18, mIndex-17, mIndex-16,mIndex-3, mIndex-2, mIndex-1, mIndex-76, mIndex-80, mIndex-72, mIndex-4, mIndex+60, mIndex+59, mIndex+58, mIndex+57, mIndex+56, mIndex+55, mIndex+54, mIndex+41, mIndex+40, mIndex+39, mIndex+38, mIndex+37, mIndex+36, mIndex+35, mIndex+22, mIndex+21, mIndex+20, mIndex+19, mIndex+18, mIndex+17, mIndex+16, mIndex+3, mIndex+2, mIndex+1, mIndex+76, mIndex+80, mIndex+72, mIndex+4]
        l__db3_aroundIndex += l__db4
##        l__db3_aroundIndex = list(set(l__db3_aroundIndex))
    for i__lninput in l__db2_lnInput:
        nIndex = l0.index(i__lninput)
        l0index.remove(nIndex)
        ln.append(i__lninput)
        l1[i__lninput[0]][i__lninput[1]] = "n"
        l__db4 = [nIndex-60, nIndex-59, nIndex-58, nIndex-57, nIndex-56, nIndex-55, nIndex-54, nIndex-41, nIndex-40, nIndex-39, nIndex-38, nIndex-37, nIndex-36, nIndex-35, nIndex-22, nIndex-21, nIndex-20, nIndex-19, nIndex-18, nIndex-17, nIndex-16,nIndex-3, nIndex-2, nIndex-1, nIndex-76, nIndex-80, nIndex-72, nIndex-4, nIndex+60, nIndex+59, nIndex+58, nIndex+57, nIndex+56, nIndex+55, nIndex+54, nIndex+41, nIndex+40, nIndex+39, nIndex+38, nIndex+37, nIndex+36, nIndex+35, nIndex+22, nIndex+21, nIndex+20, nIndex+19, nIndex+18, nIndex+17, nIndex+16, nIndex+3, nIndex+2, nIndex+1, nIndex+76, nIndex+80, nIndex+72, nIndex+4]
        l__db3_aroundIndex += l__db4
##        l__db3_aroundIndex = list(set(l__db3_aroundIndex))

    if var__db1_mode=="input_fromMiddle2":
        if var__db4_next[1] not in l0index:
            return None, None
        l0index.remove(var__db4_next[1])
        lm.append(l0[int(var__db4_next[1])])
        l1[int(l0[var__db4_next[1]][0])][int(l0[var__db4_next[1]][1])] = "m"
        objWin = ifWin(posi_l1=[int(l0[var__db4_next[1]][0]), int(l0[var__db4_next[1]][1])], obj="m", l1=l1)
        if objWin == "m":
            if var__db4_next[0] == "m":
                return 1, 1
            if var__db4_next[0] == "n":
                return 0, 1

    if ln == []:
        nIndex = 179
        n = (10, 10)
        l0index.remove(179)
        ln.append(n)
        l1[10][10] = "n"
        l__db4 = [nIndex-60, nIndex-59, nIndex-58, nIndex-57, nIndex-56, nIndex-55, nIndex-54, nIndex-41, nIndex-40, nIndex-39, nIndex-38, nIndex-37, nIndex-36, nIndex-35, nIndex-22, nIndex-21, nIndex-20, nIndex-19, nIndex-18, nIndex-17, nIndex-16,nIndex-3, nIndex-2, nIndex-1, nIndex-76, nIndex-80, nIndex-72, nIndex-4, nIndex+60, nIndex+59, nIndex+58, nIndex+57, nIndex+56, nIndex+55, nIndex+54, nIndex+41, nIndex+40, nIndex+39, nIndex+38, nIndex+37, nIndex+36, nIndex+35, nIndex+22, nIndex+21, nIndex+20, nIndex+19, nIndex+18, nIndex+17, nIndex+16, nIndex+3, nIndex+2, nIndex+1, nIndex+76, nIndex+80, nIndex+72, nIndex+4]
        l__db3_aroundIndex += l__db4



    while i < 362:
        if l0index != []:
            while mIndex not in l0index:
                mIndex = np.random.choice(l__db3_aroundIndex)
            m = l0[int(mIndex)]
            l0index.remove(mIndex)
            lm.append(m)
            m0 = int(m[0])
            m1 = int(m[1])
            l1[m0][m1] = "m"
            l__db4 = [mIndex-60, mIndex-59, mIndex-58, mIndex-57, mIndex-56, mIndex-55, mIndex-54, mIndex-41, mIndex-40, mIndex-39, mIndex-38, mIndex-37, mIndex-36, mIndex-35, mIndex-22, mIndex-21, mIndex-20, mIndex-19, mIndex-18, mIndex-17, mIndex-16,mIndex-3, mIndex-2, mIndex-1, mIndex-76, mIndex-80, mIndex-72, mIndex-4, mIndex+60, mIndex+59, mIndex+58, mIndex+57, mIndex+56, mIndex+55, mIndex+54, mIndex+41, mIndex+40, mIndex+39, mIndex+38, mIndex+37, mIndex+36, mIndex+35, mIndex+22, mIndex+21, mIndex+20, mIndex+19, mIndex+18, mIndex+17, mIndex+16, mIndex+3, mIndex+2, mIndex+1, mIndex+76, mIndex+80, mIndex+72, mIndex+4]
            l__db3_aroundIndex += l__db4
##            l__db3_aroundIndex = list(set(l__db3_aroundIndex))
            
            objWin = ifWin(posi_l1=m, obj="m", l1=l1)
            if objWin == "m":
                if var__db1_mode=="input_fromMiddle2":
                    if var__db4_next[0] == "m":
                        return 1, 1
                    if var__db4_next[0] == "n":
                        return 0, 1

                print()
                print(m)
                print("m wins the match!")
                print()
                if var__db2_ifEnvAndroid == False:
                    lm_X = []
                    lm_Y = []
                    for im__ in range (0, len(lm)):
                        lm_X.append(lm[im__][0])
                        lm_Y.append(lm[im__][1])
                    fig, axs = plt.subplots()
                    plt.xlim(-1, 19)
                    plt.ylim(-1, 19)
                    axs.scatter(lm_X, lm_Y)
                    p_xlim = np.arange(-1, 19, 1)
                    p_ylim = np.arange(-1, 19, 1)
                    plt.xticks(p_xlim)
                    plt.yticks(p_ylim)
                    plt.grid()
                    plt.show()

                return

        if l0index != []:
            while nIndex not in l0index:
                nIndex = np.random.choice(l__db3_aroundIndex)
            n = l0[int(nIndex)]
            l0index.remove(nIndex)
            ln.append(n)
            n0 = int(n[0])
            n1 = int(n[1])
            l1[n0][n1] = "n"
            l__db4 = [nIndex-60, nIndex-59, nIndex-58, nIndex-57, nIndex-56, nIndex-55, nIndex-54, nIndex-41, nIndex-40, nIndex-39, nIndex-38, nIndex-37, nIndex-36, nIndex-35, nIndex-22, nIndex-21, nIndex-20, nIndex-19, nIndex-18, nIndex-17, nIndex-16,nIndex-3, nIndex-2, nIndex-1, nIndex-76, nIndex-80, nIndex-72, nIndex-4, nIndex+60, nIndex+59, nIndex+58, nIndex+57, nIndex+56, nIndex+55, nIndex+54, nIndex+41, nIndex+40, nIndex+39, nIndex+38, nIndex+37, nIndex+36, nIndex+35, nIndex+22, nIndex+21, nIndex+20, nIndex+19, nIndex+18, nIndex+17, nIndex+16, nIndex+3, nIndex+2, nIndex+1, nIndex+76, nIndex+80, nIndex+72, nIndex+4]
            l__db3_aroundIndex += l__db4
##            l__db3_aroundIndex = list(set(l__db3_aroundIndex))
            
            objWin = ifWin(posi_l1=n, obj="n", l1=l1)
            if objWin == "n":
                if var__db1_mode=="input_fromMiddle2":
                    if var__db4_next[0] == "n":
                        return 1, 1
                    if var__db4_next[0] == "m":
                        return 0, 1

                print()
                print(n)
                print("n wins the match!")
                print()
                if var__db2_ifEnvAndroid == False:
                    ln_X = []
                    ln_Y = []
                    for in__ in range (0, len(ln)):
                        ln_X.append(ln[in__][0])
                        ln_Y.append(ln[in__][1])
                    fig, axs = plt.subplots()
                    plt.xlim(-1, 19)
                    plt.ylim(-1, 19)
                    axs.scatter(ln_X, ln_Y)
                    p_xlim = np.arange(-1, 19, 1)
                    p_ylim = np.arange(-1, 19, 1)
                    plt.xticks(p_xlim)
                    plt.yticks(p_ylim)
                    plt.grid()
                    plt.show()

                return

        if l0index != []:
            while mIndex not in l0index:
                mIndex = np.random.choice(l__db3_aroundIndex)
            m = l0[int(mIndex)]
            l0index.remove(mIndex)
            lm.append(m)
            m0 = int(m[0])
            m1 = int(m[1])
            l1[m0][m1] = "m"
            l__db4 = [mIndex-60, mIndex-59, mIndex-58, mIndex-57, mIndex-56, mIndex-55, mIndex-54, mIndex-41, mIndex-40, mIndex-39, mIndex-38, mIndex-37, mIndex-36, mIndex-35, mIndex-22, mIndex-21, mIndex-20, mIndex-19, mIndex-18, mIndex-17, mIndex-16,mIndex-3, mIndex-2, mIndex-1, mIndex-76, mIndex-80, mIndex-72, mIndex-4, mIndex+60, mIndex+59, mIndex+58, mIndex+57, mIndex+56, mIndex+55, mIndex+54, mIndex+41, mIndex+40, mIndex+39, mIndex+38, mIndex+37, mIndex+36, mIndex+35, mIndex+22, mIndex+21, mIndex+20, mIndex+19, mIndex+18, mIndex+17, mIndex+16, mIndex+3, mIndex+2, mIndex+1, mIndex+76, mIndex+80, mIndex+72, mIndex+4]
            l__db3_aroundIndex += l__db4
##            l__db3_aroundIndex = list(set(l__db3_aroundIndex))
            
            objWin = ifWin(posi_l1=m, obj="m", l1=l1)
            if objWin == "m":
                if var__db1_mode=="input_fromMiddle2":
                    if var__db4_next[0] == "m":
                        return 1, 1
                    if var__db4_next[0] == "n":
                        return 0, 1

                print()
                print(m)
                print("m wins the match!")
                print()
                if var__db2_ifEnvAndroid == False:
                    lm_X = []
                    lm_Y = []
                    for im__ in range (0, len(lm)):
                        lm_X.append(lm[im__][0])
                        lm_Y.append(lm[im__][1])
                    fig, axs = plt.subplots()
                    plt.xlim(-1, 19)
                    plt.ylim(-1, 19)
                    axs.scatter(lm_X, lm_Y)
                    p_xlim = np.arange(-1, 19, 1)
                    p_ylim = np.arange(-1, 19, 1)
                    plt.xticks(p_xlim)
                    plt.yticks(p_ylim)
                    plt.grid()
                    plt.show()

                return

        i += 1


def input_fromMiddle2 (var__de1_sum, var__de2_obj, var__de3_lmInput, var__de4_lnInput, var__de5_ifAutoSave=True):
    l__de1 = []
    l__de2_next = [var__de2_obj, None]
    i__de1 = 0
    i__de2 = 0
    i__de4 = 0
    i__de5 = var__de1_sum*361
    print()
    print(var__de3_lmInput, var__de4_lnInput)
    print()
    for i__de1 in range (361):
        l__de1.append(0)

    if len(var__de3_lmInput) == len(var__de4_lnInput):
        for i__de2 in range (var__de1_sum):        
            for i__de1 in range (361):
                i__de6 = i__de1+i__de2*361
                sys.stdout.write("    "+str(i__de6)+"    /    "+str(i__de5)+"       "+str(i__de2)+" :done              "+'\r')
                sys.stdout.flush()
                l__de2_next[1] = i__de1
                v__de1, v__de2 = inputRandom_perRound_nFirst(var__db1_mode="input_fromMiddle2",l__db1_lmInput=var__de3_lmInput, l__db2_lnInput=var__de4_lnInput, var__db4_next=l__de2_next)
                if v__de2 == 1:
                    l__de1[l__de2_next[1]] += v__de1
                else:
                    l__de1[l__de2_next[1]] = v__de1
            file_obj = open('log_5.txt', 'w')
            file_obj.writelines([str(i__de2+1), '\n', str(l__de1)])
            file_obj.flush()

    elif len(var__de3_lmInput) == len(var__de4_lnInput)+1:
        for i__de4 in range (var__de1_sum):
            for i__de3 in range (361):
                i__de6 = i__de3+i__de4*361
                sys.stdout.write("    "+str(i__de6)+"    /    "+str(i__de5)+"       "+str(i__de4)+" :done              "+'\r')
                sys.stdout.flush()
                l__de2_next[1] = i__de3
                v__de1, v__de2 = inputRandom_perRound(var__db1_mode="input_fromMiddle2",l__db1_lmInput=var__de3_lmInput, l__db2_lnInput=var__de4_lnInput, var__db4_next=l__de2_next)
                if v__de2 == 1:
                    l__de1[l__de2_next[1]] += v__de1
                else:
                    l__de1[l__de2_next[1]] = v__de1
            file_obj = open('log_5.txt', 'w')
            file_obj.writelines([str(i__de4+1), '\n', str(l__de1[0:18]), '\n', str(l__de1[19:37]), '\n', str(l__de1[38:56]), '\n', str(l__de1[57:75]), '\n', str(l__de1[76:94]), '\n', str(l__de1[95:113]), '\n', str(l__de1[114:132]), '\n', str(l__de1[133:151]), '\n', str(l__de1[152:170]), '\n', str(l__de1[171:189]), '\n', str(l__de1[190:208]), '\n', str(l__de1[209:227]), '\n', str(l__de1[228:246]), '\n', str(l__de1[247:265]), '\n', str(l__de1[266:284]), '\n', str(l__de1[285:303]), '\n', str(l__de1[304:322]), '\n', str(l__de1[323:341]), '\n', str(l__de1[342:360])])
            file_obj.flush()
    
    else: 
        print("WTF???")
        print()
        print()

    print(l__de1)
    print()
    i__de8 = 0
    for i__de7 in l__de1:
        if i__de7 is not None:
            i__de8 += i__de7
    i__de9 = i__de8/(var__de1_sum * (361 - len(var__de3_lmInput) - len(var__de4_lnInput)))
    print(i__de9)


lmInput = [(9, 9), (10, 9), (11, 9)]
lnInput = [(9, 8), (12, 17)]

inputRandom_perRound(l__db1_lmInput=lmInput, l__db2_lnInput=lnInput)
inputRandom_perRound(l__db1_lmInput=lmInput, l__db2_lnInput=lnInput)
inputRandom_perRound(l__db1_lmInput=lmInput, l__db2_lnInput=lnInput)
inputRandom_perRound(l__db1_lmInput=lmInput, l__db2_lnInput=lnInput)
inputRandom_perRound(l__db1_lmInput=lmInput, l__db2_lnInput=lnInput)
inputRandom_perRound(l__db1_lmInput=lmInput, l__db2_lnInput=lnInput)
inputRandom_perRound(l__db1_lmInput=lmInput, l__db2_lnInput=lnInput)
inputRandom_perRound(l__db1_lmInput=lmInput, l__db2_lnInput=lnInput)
inputRandom_perRound(l__db1_lmInput=lmInput, l__db2_lnInput=lnInput)
inputRandom_perRound(l__db1_lmInput=lmInput, l__db2_lnInput=lnInput)

##  test(3000)

##  input_fromMiddle(1000)

##  input_fromMiddle2(var__de1_sum=7, var__de2_obj="m", var__de3_lmInput=lmInput, var__de4_lnInput=lnInput)

