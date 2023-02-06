//
//  EssentialFeedTest.swift
//  EssentialFeedTest
//
//  Created by VEENA on 06/02/23.
//

import XCTest

class RemoteFeedLoader {
  
  func load() {
    HTTPClient.shared.get(from: URL(string: "https://a-url.com")!)
  }
  
}

class HTTPClient {
  static var shared = HTTPClient()

  var requestedURL: URL?
  
  func get(from url: URL) {
    requestedURL = url
  }
}

class HTTPClientSpy: HTTPClient {
  override func get(from url: URL) {
    requestedURL = url
  }
}

class EssentialFeedTest: XCTestCase {
  
  func test_init_doesNotRequireDataFromURL() {
    let client = HTTPClientSpy()
    HTTPClient.shared
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
