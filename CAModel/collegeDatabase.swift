import Foundation

class collegeDatabase : CustomStringConvertible {
    var allColleges : [String : collegeData] = [
                                                "Princeton": collegeData(name: "Princeton", actHigh: 35, actLow: 32, satHigh: 1590, satLow: 1400, accept: 7.0, state: "NJ", city: "Princeton", studentPop: 5400, tuition: 47140, status: nil),
                                                "Harvard": collegeData(name: "Harvard", actHigh: 35, actLow: 32, satHigh: 1600, satLow: 1430, accept: 5.0, state: "MA", city: "Cambridge", studentPop: 9915, tuition: 48949, status: nil),
                                                "University of Chicago": collegeData(name: "University of Chicago", actHigh: 35, actLow: 32, satHigh: 1600, satLow: 1450, accept: 8.0, state: "IL", city: "Chicago", studentPop: 6001, tuition: 56034, status: nil)]
    
    
    var sortedkeys : [String] {
        let str = allColleges.keys.sorted(by: { (firstKey, secondKey) -> Bool in
            return (allColleges[firstKey]?.name)! <= (allColleges[secondKey]?.name)!})
        return str
    }    
    

    func fit (_ s: String, _ size: Int, right: Bool = true) -> String{
        var result = ""
        let sSize = s.characters.count
        if sSize == size {return s}
        var count = 0
        if size < sSize {
            for c in s.characters {
                if count < size {result.append(c)}
                count += 1
            }
            return result
        }
        
        result = s
        var addon = ""
        let num = size - sSize
        for _ in 0..<num {addon.append(" ")}
        if right {return result + addon}
        return addon + result
    }
    
    func formatCollege(col: collegeData) -> String{
        return fit(col.name, 23) + "  " + fit("\(col.city),", 15) + "\(col.state)  " + fit("\(col.actLow)-\(col.actHigh)", 7) + fit("\(col.satLow)-\(col.satHigh)", 11) + fit("\(col.accept)", 7) + fit("\(col.studentPop)", 7) + fit("\(col.tuition)", 8) + "\n"
        
    }
    
    var description: String {
        var str = fit("College", 25) + fit("Location", 20) + fit("ACT", 9) + fit("SAT", 8) + fit("Acpt%", 7) + fit("Size", 7) + fit("Tuition", 8) + "\n\n"
        for i in collegeDatabase.init().sortedkeys {
            str += formatCollege(col: allColleges[i]!)
        }
        return str
        
    }
}
