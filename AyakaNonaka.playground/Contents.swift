//: Playgrounds - Swift and Apple Developers Conference
//: Melbourne, February 23 & 24
//: Website: http://www.playgroundscon.com
//: Twitter: @playgroundscon
//: Contact: hello@playgroundscon.com

import Foundation
import UIKit


// MARK: - Availability

enum Available {
    case now
    case tomorrow
    case none
}


// MARK: - Promo Model

struct Promo {
    let code: String
    let discount: Double
    let limit: Int
    let available: Available
    
    func claim() {
        let url = URL(string: "http://www.playgroundscon.com/tickets")!
        let options: [String : Any] = ["promo": self]
        
        UIApplication.shared.open(url, options: options, completionHandler: nil)
        print("Thank you for your support ❤️")
    }
}


// MARK: - Promotional Offer

let ayakaNonakaPromo = Promo(
    code: "AYAKANONAKA",
    discount: 50,
    limit: 1,
    available: .now)

ayakaNonakaPromo.claim()



