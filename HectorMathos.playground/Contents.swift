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
        switch available {
        case .now:
            print("Oh, cool! This discount code is still valid!")
            print("If I were you, I'd totes use this before someone else beats you to it.")
            print("Head on over to: \(url.absoluteString)")
            
        case .none:
            print("This promo code has been claimed, but you were SO close!")
            print("Subscribe to newsletter to stay informed of new codes: www.playgroundscon.com")
            print("Follow us on twitter also: @PlaygroundsCon \n")
        }
        print("Thank you for your support ❤️")
    }
}


// MARK: - Promotional Offer

let hectorMathosPromo = Promo(
    code: "HECTORMATHOS",
    discount: 50,
    limit: 1,
    available: .now)

hectorMathosPromo.claim()



