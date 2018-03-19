import Foundation

struct collegeData : CustomStringConvertible{
    var name : String
    var actHigh : Int
    var actLow : Int
    var satHigh : Int
    var satLow : Int
    var accept : Double
    var state : String
    var city : String
    var studentPop : Int
    var tuition : Double
    var status : status?
    
    var description: String {
        return "\(name) (\(city), \(state))\nAverage ACT/SAT/Acceptance: \(actLow)-\(actHigh)/\(satLow)-\(satHigh)/\(accept)\nStudent Body Size: \(studentPop)\nTuition: \(tuition)\n"
    }
}
