//
//  ViewController.swift
//  FBDateFormatExample
//
//  Created by Elser_10 on 8/30/21.
//

import UIKit
import FBDateFormat

class ViewController: UIViewController {
    override func viewDidLoad() {
        
        // Just now
//        let currentDate = Date()
//        print(currentDate.displayFBDateFormat())
        
       // Mins
        let minsAgo: Double = -60
//        let timeAgo = Date(timeIntervalSinceNow: minsAgo)
//        let timeAgo = Date(timeIntervalSinceNow: 2 * minsAgo)
//        print(timeAgo.displayFBDateFormat())
        
        // Hrs
        let hrAgo: Double = 60 * minsAgo
//        let timeAgo = Date(timeIntervalSinceNow: hrAgo)
//        let timeAgo = Date(timeIntervalSinceNow: 2 * hrAgo)
//        let timeAgo = Date(timeIntervalSinceNow: 23 * hrAgo)
//        print(timeAgo.displayFBDateFormat())
        
        // Still at yesterday
        let dayAgo: Double = 24 * hrAgo
//        let timeAgo = Date(timeIntervalSinceNow: dayAgo)
//        print(timeAgo.displayFBDateFormat())
        
        /*
        // Let's say today is 30/8 at 3:50 AM -> How could I still be at yesterday?
//        let timeAgo = Date(timeIntervalSinceNow: dayAgo + 3 * hrAgo)
//        print(timeAgo.displayFBDateFormat())
        
        // Also still at yesterday. It doesn't exceed the day before yesterday.
//        let timeAgo = Date(timeIntervalSinceNow: dayAgo + 3 * hrAgo + 50 * minsAgo)
//        print(timeAgo.displayFBDateFormat())
        
       // Exceeded yesterday.
//        let timeAgo = Date(timeIntervalSinceNow: dayAgo + 3 * hrAgo + minsAgo * 51)
//        print(timeAgo.displayFBDateFormat())
        */
        
        // Test the rest of days
//        let timeAgo = Date(timeIntervalSinceNow: 2 * dayAgo)
//        let timeAgo = Date(timeIntervalSinceNow: 5 * dayAgo)
//        print(timeAgo.displayFBDateFormat())
        
       // Weeks test
        let weekAgo = 7 * dayAgo
//        let timeAgo = Date(timeIntervalSinceNow: weekAgo)
//        let timeAgo = Date(timeIntervalSinceNow: 2 * weekAgo)
//        print(timeAgo.displayFBDateFormat())
        
        // Months test
        let monthAgo = 4 * weekAgo
//        let timeAgo = Date(timeIntervalSinceNow: monthAgo)
//        let timeAgo = Date(timeIntervalSinceNow: 2 * monthAgo)
//        print(timeAgo.displayFBDateFormat())
        
        // Years test
        let yearAgo = 12 * monthAgo
//        let timeAgo = Date(timeIntervalSinceNow: yearAgo)
//        let timeAgo = Date(timeIntervalSinceNow: 5 * yearAgo)
//        print(timeAgo.displayFBDateFormat())
    }
}
