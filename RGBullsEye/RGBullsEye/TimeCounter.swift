//
//  TimeCounter.swift
//  RGBullsEye
//
//  Created by Himanshu Rajput on 16/07/20.
//  Copyright © 2020 Himanshu Rajput. All rights reserved.
//

import Foundation
import Combine

// This is a publisher class
class TimeCounter: ObservableObject {
    var timer: Timer?
    @Published var counter = 0
    
    @objc func updateCounter() {
        counter += 1
    }
    
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
