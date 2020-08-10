//
//  AlbumsView.swift
//  ResolverExample
//
//  Created by Endtry on 23/2/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import SwiftUI
import Combine
import Resolver

struct AlbumsView: View {
    
    @ObservedObject var albumsViewModel: AlbumsViewModel = Resolver.resolve()
    
    var body: some View {
        NavigationView {
            List(self.albumsViewModel.albumsList) { item in
                Text(item.title)
            }
            .navigationBarTitle("Albums")
        }
        .onAppear {
            self.albumsViewModel.getAlbumsList()
        }
    }
    
    struct AlbumsView_Previews: PreviewProvider {
        static var previews: some View {
            AlbumsView()
        }
    }
}
