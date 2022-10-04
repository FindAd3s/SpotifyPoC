//
//  TestFunc.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 9/29/22.
//

import Foundation

final class TestFunc {
    
    static let shared = TestFunc()
    
    private init(){}
    
    public func printStatement(){
        print("Test Statement Printed")
    }
    
}
