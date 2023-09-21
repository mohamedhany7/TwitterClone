//
//  Constants.swift
//  TwitterClone
//
//  Created by Mohamed Hany on 12/09/2023.
//

import Foundation

struct K {
    static let appName = "Twitter"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "TweetCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
