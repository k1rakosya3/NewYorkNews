//
//  IndividualNews.swift
//  NYorkNews
//
//  Created by Admin on 12.10.23.
//

import SwiftUI

struct IndividualNews: View {
    var newsModel: Docs?
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 5) {
                NewsIMage(newsImage: newsModel?.multimedia[0].url)
                
                Text("Abstract")
                    .font(.title2)
                    .padding(.leading, 20)
                Text(newsModel?.abstract ?? "hasnt")
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .padding(.bottom, 20)
                Text("Paragraph")
                    .font(.title2)
                    .padding(.leading, 20)
                
                Text(newsModel?.lead_paragraph ?? "")
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
            
                ExternalWebLinkView(url: newsModel?.web_url ?? "")
                    .padding()
                Spacer()
            }
        }
        .navigationBarTitle((newsModel?.source ?? "The New York Times"), displayMode: .inline)
    }
}

#Preview {
    IndividualNews()
}
