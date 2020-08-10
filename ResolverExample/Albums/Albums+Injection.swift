//
//  Albums+Injection.swift
//  ResolverExample
//
//  Created by Endtry on 23/2/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Resolver

extension Resolver {
    
    public static func registerAlbums() {
        register{ MockAlbumsAPI() as AlbumsAPI }
        register(name: "AlbumsRemoteDataSource") { AlbumsRemoteDataSource(albumsAPI: resolve()) as AlbumsDataSource }
        register(name: "AlbumsLocalDataSource") { AlbumsLocalDataSource() as AlbumsDataSource }
        register{
            DefaultAlbumsRepository(
                albumsLocalDataSource: resolve(name: "AlbumsLocalDataSource"),
                albumsRemoteDataSource: resolve(name: "AlbumsRemoteDataSource")
            ) as AlbumsRepository
        }
        register{ DefaultGetAlbumsListUseCase(albumsRepository: resolve()) as GetAlbumsListUseCase }
        register{ AlbumsViewModel() }
    }
}
