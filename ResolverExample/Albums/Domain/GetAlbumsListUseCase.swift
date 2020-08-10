//
//  GetAlbumsListUseCase.swift
//  ResolverExample
//
//  Created by Endtry on 23/2/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation
import Resolver

protocol GetAlbumsListUseCase {
    func execute() -> Albums
}

class DefaultGetAlbumsListUseCase: GetAlbumsListUseCase {
    
    private let albumsRepository: AlbumsRepository
    
    init(albumsRepository: AlbumsRepository) {
        self.albumsRepository = albumsRepository
    }
    
    func execute() -> Albums {
        return self.albumsRepository.getAlbumsList()
    }
    
}
