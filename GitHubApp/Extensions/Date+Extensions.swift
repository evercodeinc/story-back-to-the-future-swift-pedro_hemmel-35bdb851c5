import Foundation

extension Date {
    
    static func format(dateString: String) -> String? {
        var dateFormatter = DateFormatter()
        
        //Formatting the date
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateFormatted = dateFormatter.date(from: dateString)
        let dateStringFormatted = dateFormatter.string(from: dateFormatted ?? Date())
        
        return dateStringFormatted
    }
    
    func travelToFuture(years: Int) -> String? {
        //Modifying year of current date
        let calendar = Calendar.current
        let modifiedDate = calendar.date(byAdding: .year, value: years, to: Date())
        
        var dateFormatter = DateFormatter()
        
        //Formatting the date
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateFormatted = dateFormatter.string(from: modifiedDate ?? Date())
        
        return dateFormatted
    }
}
