import Foundation

extension Date {
    
    static func format(dateString: String) -> String? {
        var dateFormatter = DateFormatter()
        
        //Formatting the date
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateFormatted = dateFormatter.date(from: dateString)
        
        return dateFormatter.string(from: dateFormatted ?? Date())
    }
    
    func travelToFuture(years: Int) -> String? {
     
        // TODO
        return nil
    }
}
