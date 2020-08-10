//
//  AlbumsApi.swift
//  ResolverExample
//
//  Created by Endtry on 9/8/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation

protocol AlbumsAPI {
    func getAlbums() -> Albums
}

class MockAlbumsAPI: AlbumsAPI {
    
    func getAlbums() -> Albums {
        return [
            Album(userID: 59, id: 1, title: "Quidem molestiae enim"),
            Album(userID: 69, id: 2, title: "Sunt qui excepturi placeat culpa"),
            Album(userID: 79, id: 3, title: "Omnis laborum odio"),
            Album(userID: 9, id: 10, title: "Distinctio laborum qui")
        ]
    }
}
