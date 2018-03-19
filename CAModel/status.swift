import Foundation

class status : CustomStringConvertible {
    var forCollege : String
    var numbOfLetters: Int               //number of rec letters the have
    var sentScores: Int                  //whether they have sent scores or naw           WHY NOT A BOOL?
    var recQ: Int                        //status of recs ENUM
    var supp: Int                        //number of suppliment questions
    var doneSupp: Int                    //status of supps ENUM
    var CaQ: Bool                        //whether the college is on CA or naw
    var releaseTransQ : Bool             //whether or not they have released their transcript
    var interview : Bool                 //whether or not they need an interview
    var interQ : Int/*?*/                    //interview status OPTIONAL ENUM
    
    init(forCollege: String, numbOfLetters: Int, sentScores: Int, recQ: Int, supp: Int, doneSupp: Int, CaQ: Bool, releaseTransQ: Bool, interview: Bool, interQ: Int/*?*/){
        self.forCollege = forCollege
        self.numbOfLetters = numbOfLetters
        self.sentScores = sentScores
        self.recQ = recQ
        self.supp = supp
        self.doneSupp = doneSupp
        self.CaQ = CaQ
        self.releaseTransQ = releaseTransQ
        self.interview = interview
        self.interQ = interQ
    }
    
    var description: String {
        return "Applying to: \(forCollege)\nHave Supps/#Done: \t \(supp)/\(doneSupp)\nHave Interview/Prep: \t \(interQ)/\(interview)\nSent Transcripts/rec letters/rec status: \t \(releaseTransQ)/\(numbOfLetters)/\(recQ) \nIs this college on CA: \t \(CaQ)"
    }
}
