//
//  NewsData.swift
//  NYorkNews
//
//  Created by Admin on 12.10.23.
//

import Foundation
struct NewsData: Codable {
    let status: String
    let copyright: String
    let response: Response
}

struct Response: Codable {
    let docs: [Docs]
    let meta: Meta
}

struct Docs: Codable {
    let abstract: String
    let web_url: String
    let snippet: String
    let lead_paragraph: String
    let source: String
    let multimedia: [MultiMedia]
    let headline: HeadLine
    let keywords: [KeyWord]
    let pub_date: String
    let document_type: String
    let news_desk: String
    let section_name: String
    let subsection_name: String
    let byline: Byline
    let type_of_material: String
    let _id: String
    let word_count: Int
    let uri: String
}

struct Byline: Codable {
    let original: String
}

struct KeyWord: Codable {
    let name: String
    let value: String
    let rank: Int
    let major: String
}

struct MultiMedia: Codable {
    let rank: Int
    let subtype: String
    let type: String
    let url: String
    let height: Int
    let width: Int
    let subType: String
    let crop_name: String
}

struct HeadLine: Codable {
    let main: String
}

struct Meta: Codable {
    let hits: Double
    let offset: Int
    let time: Int
}
