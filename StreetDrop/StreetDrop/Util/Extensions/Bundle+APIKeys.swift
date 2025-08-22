//
//  Bundle+APIKeys.swift
//  StreetDrop
//
//  Created by 차요셉 on 2023/07/13.
//

import Foundation

extension Bundle {
    var naverMapsClientID: String? {
        guard let file = self.path(forResource: "NaverMaps", ofType: "plist") else {
            return nil
        }
        guard let resource = NSDictionary(contentsOfFile: file) else { return nil }
        guard let clientID = resource["NMFClientId"] as? String else {
            return nil
        }
        return clientID.hasPrefix("PORTFOLIO_") ? nil : clientID
    }

    var hasFirebaseConfiguration: Bool {
        guard
            let file = self.path(forResource: "GoogleService-Info", ofType: "plist"),
            let resource = NSDictionary(contentsOfFile: file),
            let appID = resource["GOOGLE_APP_ID"] as? String
        else {
            return false
        }

        return !appID.hasPrefix("PORTFOLIO_")
    }
}
