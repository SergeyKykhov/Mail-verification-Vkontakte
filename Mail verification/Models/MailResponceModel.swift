//
//  MailResponceModel.swift
//  Mail verification
//
//  Created by Sergey Kykhov on 09.11.2022.
//

import Foundation

struct MailResponceModel: Decodable {
    let result: String
    let reason: String
    let did_you_mean: String?
    let success: Bool

    var reasonDescription: String {
        switch reason {
        case "invalid_email":
            return "Specifiad email is not a valid email address syntax"
        case "invalid_domain":
            return "Domain for email does not exist"
        case "rejected_email":
            return "Email address was rejected by the SMTP server, email address does not exist"
        case "accepted_email":
            return "Email address was accepted by the SMTP server"
        case "low_quality":
            return "Email address has quality issues that may make it a risky or low-value address"
        case "low_deliverability":
            return "Email address appears to be deliverable, but deliverability cannot be guaranteed"
        case "no_connect":
            return "Could not connect to SMPT server"
        case "timeout":
            return "SMPT server was unavailable to process our request"
        case "invalid_smtp":
            return "SMTP serverreturned on unexpected/invalid response"
        case "unavailable_smtp":
            return "SMTP server was unavailable to process our request"
        case "unexpected_error":
            return "An unexpected error has occurred"
        default: return "No data"
        }
    }
}

