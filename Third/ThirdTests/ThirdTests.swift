//
//  ThirdTests.swift
//  ThirdTests
//
//  Created by VEENA on 28/05/22.
//

import XCTest
@testable import Third

class ThirdTests: XCTestCase {

 func testsomething () {
   XCTAssertNotNil(Notes.DO, "Do exists")
  }
  
  func testsomechords () {
    XCTAssertNotNil(chords.DOMISO, "Do exists")
   }

}
