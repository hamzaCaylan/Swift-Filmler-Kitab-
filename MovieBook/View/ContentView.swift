//
//  ContentView.swift
//  MovieBook
//
//  Created by Hamza Caylan on 9.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                DownloaderClient().filimlerIndir(search: "tita") { (sonuc) in
                    switch sonuc {
                    case .success(let filmDizisi) :
                        print(filmDizisi as Any)
                    case .failure(let hata):print(hata)
                    }
                }
            },
                   label: {Text("test yap")})
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
