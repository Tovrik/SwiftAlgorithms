//
//  quicksort.swift
//  
//
//  Created by Stefan Peterson on 2/18/16.
//
//


func quickSort<T: Comparable>(inout a: [T], left: Int, right: Int) {
    if a.count <= 1 { return }
    
    if left < right {
        let p = partition(&a, lo: left, hi: right)
        quickSort(&a, left: left, right: p - 1)
        quickSort(&a, left: p + 1, right: right)
    }
}

func partition<T: Comparable>(inout a: [T], lo: Int, hi: Int) -> Int {
    let pivot = a[lo]
    var p = lo
    
    for i in (lo+1)...hi {
        if a[i] < pivot && ++p != i {
            (a[p], a[i]) = (a[i], a[p])
        }
    }
    (a[lo], a[p]) = (a[p], a[lo])
    return p
}
