//
//  ArticleEndpoint.swift
//  newsfeedSkeleton
//
//  Created by Jose Fernandez-Rocha on 10/28/22.
//

import Foundation

protocol APIBuilder {
    var urlRequest: URLRequest{ get }
    var baseURL: URL {get }
    var path: String {get}
}
enum ArticleAPI {
    case getNews
}

extension ArticleAPI: APIBuilder{
    var baseUrl: URL {
        switch self {
        case .getNews:
            return URL(string: "https://api.lil.software")!
        }
    }
    var path: String {
        switch self {
        case .getNews:
            return "/news"
        }
    }
    var urlRequest: URLRequest {
        switch self {
        case .getNews:
            return URLRequest(url: self.baseUrl.appendingPathComponent(self.path))
        }
    }
}
