//
//  ContentView.swift
//  MovieBook
//
//  Created by Hamza Caylan on 9.06.2023.
//

import SwiftUI

struct FilmListeView: View {
    
    @ObservedObject var filmListeViewModel : FilmListeViewModel
    
    init(filmListeViewModel: FilmListeViewModel) {
        self.filmListeViewModel = FilmListeViewModel()
        self.filmListeViewModel.filimAramasiYap(filmIsmi: "pub")
    }
    
    var body: some View {
            List(filmListeViewModel.filmler,id: \.imdbId){
                film in
                HStack{
                    Text(film.title)
                    Text(film.year)
                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FilmListeView(filmListeViewModel: FilmListeViewModel())
    }
}
