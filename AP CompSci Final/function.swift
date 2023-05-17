//
//  function.swift
//  AP CompSci Final
//

import SwiftUI
import Foundation

func redDislike(dislikeCount: Int) -> Color {
    if dislikeCount == 0 {
       return .gray
    } else {
            return .red
        }
}
func updateDislikeCount (dislikeCount: Int) -> Int {
    if dislikeCount == 0 {
        return 1
    } else {
        return  0
    }
}



func greenLike(likeCount: Int) -> Color {
    if likeCount == 0 {
       return .gray
    } else {
            return .green
        }
}
func updateLikeCount (likeCount: Int) -> Int {
    if likeCount == 0 {
        return 1
    } else {
        return  0
    }
}



