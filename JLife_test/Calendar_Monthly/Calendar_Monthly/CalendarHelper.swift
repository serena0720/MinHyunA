import Foundation
import UIKit

class CalendarHelper
{
    //달력을 현시간대로 맞추기
    let calendar = Calendar.current
    
    //korea 시간대로 맞추기
        //dateFormatter.locale = Locale(identifier: "ko_KR")
    /*
     let now = Date()
     let dateFormatter = DateFormatter()
     dateFormatter.locale = Locale(identifier: "ko_KR")
     dateFormatter.dateFormat = "yyyy년 mmd월 dd일 HH시 mm분 s초"
     */
    
    func plusMonth(date : Date)->Date{
        return calendar.date(byAdding: .month, value : 1, to: date)!
    }
    func minusMonth(date : Date)->Date{
        return calendar.date(byAdding: .month, value : -1, to: date)!
    }
    
    
    func monthString(date: Date)-> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        return dateFormatter.string(from: date)
    }
    func yearString(date: Date)-> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        return dateFormatter.string(from: date)
    }
    func daysInMonth(date: Date)-> Int{
        let range = calendar.range(of: .day, in: .month, for: date)
        return range!.count
    }
    func dayOfMonth(date: Date)-> Int{
        let components = calendar.dateComponents([.day], from: date)
        return components.day!
    }
    func firstOfMonth(date: Date)-> Date{
        let components = calendar.dateComponents([.year, .month], from: date)
        return calendar.date(from: components)!
    }
    func weekDay(date: Date)-> Int{
        let components = calendar.dateComponents([.weekday], from: date)
        return components.weekday! - 1
    }
}
    
