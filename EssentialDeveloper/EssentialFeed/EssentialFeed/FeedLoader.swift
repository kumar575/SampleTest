//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by VEENA on 06/02/23.
//

import Foundation

enum LoadResult {
  case success([FeedItem])
  case error(Error)
}

protocol FeedLoader {
  func load(completion: @escaping (LoadResult) -> Void)
}
