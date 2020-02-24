//
//  Albums.swift
//  ResolverExample
//
//  Created by Endtry on 23/2/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation

// MARK: - Album
struct Album: Codable, Identifiable {
    var userID: Int = 0
    var id: Int = 0
    var title: String = ""
}

typealias Albums = [Album]
