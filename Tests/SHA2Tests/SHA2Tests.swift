//
//  CollectionTests.swift
//  MongoKitten
//
//  Created by Joannis Orlandos on 23/03/16.
//  Copyright © 2016 PlanTeam. All rights reserved.
//

import XCTest
import Foundation
import SHA2
import CryptoEssentials

class SHA2Tests: XCTestCase {
    static let allTests = [
       ("testSHA256", testSHA256),
       ("testSHA384", testSHA384),
       ("testSHA512", testSHA512),
    ]
    
    func testSHA256() {
        let hash = "Swift is AWESOME".sha256()
        
        XCTAssertEqual(hash.hexString.lowercased(), "6cd1c6d80c427a70b23f785919dc6a80f3aa37a7a50cce1100745a5b84e5eeda")
    }
    
    func testSHA384() {
        let hash = "Swift is AWESOME".sha384()
        
        XCTAssertEqual(hash.hexString.lowercased(), "b925c78a85dd25d365263bc105a0f6250a42a5c6705b022023767548afebd0aeeb8dc441a6a4226d45d309f20382fbee")
    }
    
    func testSHA512() {
        let hash = "Swift is AWESOME".sha512()
        
        XCTAssertEqual(hash.hexString.lowercased(), "394b23e2babdeef2d185aa15ca2dd4a25665fcd48d9cf802733bb583bf0e8cf37fc1c294a3266c8b8cb73dfd6239d3162e6baf4477ca6b1c20b1efd9f0c976a5")
    }
}
