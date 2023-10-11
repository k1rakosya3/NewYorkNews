//
//  ContentView.swift
//  NYorkNews
//
//  Created by Admin on 12.10.23.
//

import SwiftUI

struct ContentView: View {
    @State private var data: NewsData?
    var body: some View {
        NavigationView(content: {
            VStack {
                NavigationBarView()
                    .padding(.top, 20)
                    .padding()
                    .background(.accent)
                
                List {
                    ForEach(0..<(data?.response.docs.count ?? 5), id: \.self) { index in
                        let imageURL = data?.response.docs[index].multimedia[0].url
                        let title = data?.response.docs[index].abstract
                        let comment = data?.response.docs[index].byline.original
                        NavigationLink(destination: IndividualNews(newsModel: data?.response.docs[index])) {
                            ListItemView(modelImageURL: imageURL ?? "" , modelTitle: title ?? "" , modelComment: comment ?? "" )
                        }

                        
                    }
                }
            }
            
            .listStyle(.plain)
            
        })
        .onAppear {
            fetchNewser()
        }
    }
    
    
func fetchNewser() {
    guard let url = URL(string: "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=election&api-key=k0Qm7nIbIIvtYAInsMAqPSCx6AdMdGvy") else {
            print("Invalid URL")
            return
        }

    URLSession.shared.dataTask(with: url) { data, response, error in
        
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode(NewsData.self, from: data)
                    DispatchQueue.main.async {
                        self.data = decodedData
                    }
                } catch {
                    print("JSON decoding error: \(error)")
                }
            } else if let error = error {
                print("Data request error: \(error)")
            }
        }.resume()
    }
}

#Preview {
    ContentView()
}

