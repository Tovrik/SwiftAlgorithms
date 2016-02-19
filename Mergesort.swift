//
//  mergesort.swift
//  
//
//  Created by Stefan Peterson on 2/17/16.
//
//

func mergesort<T: Comparable>(inout a: [T]){
    if a.count <= 1 { return }
    let middle = a.count / 2
    
    var left: [T] = []
    for i in 0..<middle {
        left.append(a[i])
    }
    var right: [T] = []
    for i in middle..<a.count {
        right.append(a[i])
    }
    mergesort(&left)
    mergesort(&right)
    a = merge(left, b: right)
}

func merge<T: Comparable>(var a: [T], var b: [T]) -> [T]{
    var c: [T] = []
    
    while a.count > 0 && b.count > 0 {
        if a[0] > b[0] {
            c.append(b[0])
            b.removeAtIndex(0)
        } else {
            c.append(a[0])
            a.removeAtIndex(0)
        }
    }
    while a.count > 0 {
        c.append(a[0])
        a.removeAtIndex(0)
    }
    while b.count > 0 {
        c.append(b[0])
        b.removeAtIndex(0)
    }
    return c
}
