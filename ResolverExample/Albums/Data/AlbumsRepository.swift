//
//  AlbumsRepository.swift
//  ResolverExample
//
//  Created by Endtry on 23/2/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation

protocol AlbumsRepository {
    func getAlbumsList() -> Albums
}

class DefaultAlbumsRepository: AlbumsRepository {
    
    private let isNetworkUnavailable = true
    private let albumsLocalDataSource: AlbumsDataSource
    private let albumsRemoteDataSource: AlbumsDataSource
    
    init(albumsLocalDataSource: AlbumsDataSource, albumsRemoteDataSource: AlbumsDataSource) {
        self.albumsLocalDataSource = albumsLocalDataSource
        self.albumsRemoteDataSource = albumsRemoteDataSource
    }
    
    func getAlbumsList() -> Albums {
        
        if isNetworkUnavailable {
            return self.albumsLocalDataSource.getAlbumsList()
        }
        
        return self.albumsRemoteDataSource.getAlbumsList()
    }
}
