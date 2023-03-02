import Foundation

extension Date {
    
    static func format(dateString: String) -> String? {
        let dateFormatter = DateFormatter()
        
        //Formatting the date
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let dateFormatted = dateFormatter.date(from: dateString)
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let dateStringFormatted = dateFormatter.string(from: dateFormatted ?? Date())
        
        return dateStringFormatted
    }
    
    func travelToFuture(years: Int) -> String? {
        //Modifying year of current date
        let calendar = Calendar.current
        let modifiedDate = calendar.date(byAdding: .year, value: years, to: self)
        
        let dateFormatter = DateFormatter()
        
        //Formatting the date
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let dateFormatted = dateFormatter.string(from: modifiedDate ?? Date())
        
        return dateFormatted
    }
}
