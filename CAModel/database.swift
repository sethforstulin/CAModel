import Foundation

class database : CustomStringConvertible {
    var mycolleges = [String : collegeData]()
    var profiles : [profiles] = [] //SHOULD BE IN UI NOT HERE
    var allColleges = collegeDatabase.init().allColleges
    
    /*func addCollege(name: String, actMid: Int, satMid: Int, accept: Double, state: String, city: String, studentPop: Int, schoolID: Int, rank: Int){
        
        let c = status(forCollege: collegeData(name: name, actMid: actMid, satMid: satMid, accept: accept, state: state, city: city, studentPop: studentPop, tuition: <#Double#>, schoolID: schoolID, rank: rank, status: nil))
        mycolleges[c.forCollege.name] = c//FIX FOR TUPLE
    }*/
    
    /*func removeCollege(name: String) {
        mycolleges.removeValue(forKey: name)
    }*/
    
    var description: String {
        /*var str = fit("College", 25) + fit("Location", 20) + fit("ACT", 9) + fit("SAT", 11) + fit("Acpt%", 7) + fit("Size", 7) + fit("Tuition", 8) + "\n\n"
        for i in collegeDatabase.init().sortedkeys {
            str += formatCollege(col: allColleges[i]!)
        }
        return str*/
        return "still dk what this should do"
    }
    
}
