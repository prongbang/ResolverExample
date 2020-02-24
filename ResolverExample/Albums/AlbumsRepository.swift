//
//  AlbumsRepository.swift
//  ResolverExample
//
//  Created by Endtry on 23/2/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation

protocol AlbumsRepository {
    func fetchAlbumsList() -> Albums
}

class DefaultAlbumsRepository: AlbumsRepository {
    
    func fetchAlbumsList() -> Albums {
        return [
            Album(userID: 59, id: 1, title: "Quidem molestiae enim"),
            Album(userID: 69, id: 2, title: "Sunt qui excepturi placeat culpa"),
            Album(userID: 79, id: 3, title: "Omnis laborum odio"),
            Album(userID: 89, id: 4, title: "Non esse culpa molestiae omnis sed optio"),
        ]
    }
}
