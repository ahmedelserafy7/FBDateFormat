//
//  DateFormat.swift
//  FBDateFormat
//
//  Created by Elser_10 on 8/30/21.
//

import Foundation

extension Date {
    
    public func displayFBDateFormat() -> String {
        
        let min = 60
        let hr = 60 * min
        let day = 24 * hr
        let week = 7 * day
        let month = 4 * week
        let year = 12 * month
        let timeInSecs = Int(Date().timeIntervalSince(self))
        
        let differenceInYears = Int(Date().timeIntervalSince(self)) / year
        guard differenceInYears == 0 else { return "\(self.string(format: "MMMM d, yyyy"))"}
        
        var unit = ""
        var quotient = 0
        var dateFormat = ""
        
        if timeInSecs < min {
            unit = "Just now"
            dateFormat = unit
        } else if timeInSecs < hr {
            unit = "min"
            quotient = timeInSecs / min
            dateFormat = "\(quotient) \(unit)\(quotient == 1 ? "" : "s")"
        } else if timeInSecs < day {
            unit = "hr"
            quotient = timeInSecs / hr
            dateFormat = "\(quotient) \(unit)\(quotient == 1 ? "" : "s")"
        } else if distance(component: .day) < 2 {
            dateFormat = "Yesterday at " + string(format: "h:mm a")
        } else if timeInSecs < month {
            dateFormat = string(format: "MMMM d") + " at " + string(format: "h:mm a")
        } else {
            dateFormat = string(format: "MMMM d")
        }
        
        return dateFormat
    }
}

extension Date {
    fileprivate func distance(component: Calendar.Component, calendar: Calendar = .current) -> Int {
        let fromDay = calendar.component(component, from: self)
        let toDay = calendar.component(component, from: Date())
        return toDay - fromDay
    }
}

extension Date {
    fileprivate func string(format: String)-> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
