//
//  Quote.swift
//  Motivate Me 2
//
//  Created by Kazutaka Homma on 9/21/17.
//  Copyright © 2017 Kazutaka Homma. All rights reserved.
//

import Foundation
import ObjectMapper

class Quote: Mappable {
    // TODO: internal(set)
    public var text = ""
    public var source = ""
    public var categories: [String] = []
    init() {}
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        text <- map["text"]
        source <- map["source"]
        categories <- map["categories"]
    }

}
