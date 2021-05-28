//
//  APICaller.swift
//  News
//
//  Created by user183806 on 5/23/21.
//  Copyright © 2021 user183806. All rights reserved.
//

import Foundation

final class APICaller{
    static let shared = APICaller()
    
    struct Constants{
        static let topHeadLinesURL = URL(string: "https://newsapi.org/v2/top-headlines?country=US&apiKey=bb92ee0b890743d38de587f0b0f082a3")
    }
    
    private init(){}
    
    public func getTopStories(completion: @escaping (Result<[Article], Error>) -> Void){
        guard let url = Constants.topHeadLinesURL else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, _IOFBF, error) in
            if let error = error{
                completion(.failure(error))
            }
            else if let data = data{
                do{
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    print("Articles: \(result.articles.count)")
                    completion(.success(result.articles))
                } catch{
                    completion(.failure(error))
                }
            }
        }
        
        task.resume()
    }
}

//Models
struct APIResponse: Codable {
    let articles: [Article]
}

struct Article: Codable{
    let source: Source
    let title: String
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String
}

struct Source: Codable {
    let name: String
}
