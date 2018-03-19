import Foundation

class profiles : CustomStringConvertible {
    
    var name : String
    var data = database()
    var mycolleges : [String: collegeData] = [:]
    var order : [String] = []
    var userInput : [String] = []
    
    init(name: String){
        self.name = name
    }
    
    var sortedkeys : [String] {
        let str = mycolleges.keys.sorted(by: { (firstKey, secondKey) -> Bool in
            return (mycolleges[firstKey]?.studentPop)! <= (mycolleges[secondKey]?.studentPop)!})
        return str
    }
    
    func addCollege(name: String) {
        let n = mycolleges.count
        guard data.allColleges.keys.contains(name) else {
            print("\(name) is not in our Database")
            return
        }
        order.append(name)
        mycolleges[name] = data.allColleges[name]!
        mycolleges[name]!.status = status(forCollege: name, numbOfLetters: n, sentScores: n, recQ: n, supp: n, doneSupp: n, CaQ: true, releaseTransQ: true, interview: true, interQ: n)//user puts in MAKE BETTER + START WITH ENUMS IN STATUS CLASS + READ/WRITE/USER INPUT in UI
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
    
    func formatStatus(status: status) -> String{
        return fit(status.forCollege, 23) + "  " + fit("\(status.numbOfLetters)", 15) + fit("\(status.recQ)", 7) + fit("\(status.supp)", 7) + fit("\(status.doneSupp)", 7) + fit("\(status.CaQ)", 7) + fit("\(status.releaseTransQ)", 9) + fit("\(status.sentScores)", 13) + fit("\(status.interQ)", 13) + fit("\(status.interview)", 11) + "\n"
    }
    
    var description: String {
        guard mycolleges.count != 0 else {
            return "\(name) is not applying anywhere yet!"
        }
        
        var str = fit("College", 25) + fit("Numb. of Let.", 15) + fit("recs", 7) + fit("#sup", 7) + fit("dsup", 7) + fit("CA?", 7) + fit("sndtrns", 9) + fit("Sent Scores", 13) + fit("Intv. Prep", 13) + fit("Interview?", 11) + "\n\n"
        for i in sortedkeys {
            str += formatStatus(status: mycolleges[i]!.status!)
        }
        return str
    }
}
