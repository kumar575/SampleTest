//
//  EssentialFeedTest.swift
//  EssentialFeedTest
//
//  Created by VEENA on 06/02/23.
//

import XCTest

class RemoteFeedLoader {
  
  func load() {
    HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")
  }
  
}

class HTTPClient {
  static let shared = HTTPClient()
  private init() {}
  var requestedURL: URL?
}

class EssentialFeedTest: XCTestCase {
  
  func test_init_doesNotRequireDataFromURL() {
    let client = HTTPClient.shared
    _ = RemoteFeedLoader()
    XCTAssertNotNil(client.requestedURL)
  }

  func test_init() {
    let sut = RemoteFeedLoader()
    let client = HTTPClient.shared
    
    sut.load()
    
    XCTAssertNotNil(client.requestedURL)
  }

}
