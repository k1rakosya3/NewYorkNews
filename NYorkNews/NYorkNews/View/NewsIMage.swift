//
//  NewsIMage.swift
//  NYorkNews
//
//  Created by Admin on 12.10.23.
//

import SwiftUI

struct NewsIMage: View {
    var newsImage: String?
    var body: some View {
        AsyncImage(url: URL(string: newsImage ?? "")) { image in
            image
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width)
                .clipShape(Circle())
        } placeholder: {
            ProgressView()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
        }
    }
}

struct NewsIMage_Previews: PreviewProvider {
    
    static var previews: some View {
        NewsIMage(newsImage: "")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

