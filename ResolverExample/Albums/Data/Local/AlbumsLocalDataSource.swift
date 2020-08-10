//
//  AlbumsLocalDataSource.swift
//  ResolverExample
//
//  Created by Endtry on 9/8/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

class AlbumsLocalDataSource : AlbumsDataSource {
    
    func getAlbumsList() -> Albums {
        return [
            Album(userID: 59, id: 1, title: "Quidem molestiae enim"),
            Album(userID: 69, id: 2, title: "Sunt qui excepturi placeat culpa"),
            Album(userID: 79, id: 3, title: "Omnis laborum odio"),
            Album(userID: 89, id: 4, title: "Non esse culpa molestiae omnis sed optio"),
            Album(userID: 99, id: 5, title: "Eaque aut omnis a"),
            Album(userID: 49, id: 6, title: "Natus impedit quibusdam illo est"),
            Album(userID: 39, id: 7, title: "Quibusdam autem aliquid et et quia"),
            Album(userID: 29, id: 8, title: "Qui fuga est a eum"),
            Album(userID: 19, id: 9, title: "Saepe unde necessitatibus rem"),
            Album(userID: 9, id: 10, title: "Distinctio laborum qui")
        ]
    }
}
