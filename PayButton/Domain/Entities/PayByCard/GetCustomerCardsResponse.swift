//
//  GetCustomerCardsResponse.swift
//  OoredooPayButton
//
//  Created by Hazem-Mohamed on 22/09/2022.
//

import Foundation

struct GetCustomerCardsResponse: Decodable {
    
    let message, referenceId, secureHash, secureHashData: String?
    let success: Bool?
    let transactionId: String?
    let cardsList: [CardDetails]?
    
    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case referenceId = "ReferenceId"
        case secureHash = "SecureHash"
        case secureHashData = "SecureHashData"
        case success = "Success"
        case transactionId = "TransactionId"
        case cardsList = "cardsLists"
    }
}

struct CardDetails: Decodable {
    
    let cardID: Int?
    let displayName: String?
    let maskedCardNumber: String?
    let brand: String?
    let cardsListPostfix: String?
    let token: String?

    enum CodingKeys: String, CodingKey {
        case cardID = "CardId"
        case displayName = "DisplayName"
        case maskedCardNumber = "MaskedCardNumber"
        case brand = "Brand"
        case cardsListPostfix = "Postfix"
        case token = "Token"
    }
}
