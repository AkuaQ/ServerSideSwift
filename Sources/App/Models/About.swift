//
//  About.swift
//  App
//
//  Created by Akua Afrane-Okese on 2020/04/07.
//

import Foundation
import Vapor

struct About: Content {
    var aboutId: Int?
    var title: String
    var description: String
}
