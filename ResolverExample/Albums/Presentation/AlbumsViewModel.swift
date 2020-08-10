//
//  AlbumsViewModel.swift
//  ResolverExample
//
//  Created by Endtry on 23/2/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation
import Resolver
import Combine

class AlbumsViewModel: ObservableObject {
    
    @Published var albumsList = Albums()
    
    @Injected var getAlbumsListUseCase: GetAlbumsListUseCase
    
    func getAlbumsList() {
        self.albumsList = self.getAlbumsListUseCase.execute()
    }
}
