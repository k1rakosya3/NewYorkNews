//
//  ListItemView.swift
//  NYorkNews
//
//  Created by Admin on 12.10.23.
//

import SwiftUI

struct ListItemView: View {
    let modelImageURL: String
    let modelTitle: String
    let modelComment: String
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: modelImageURL)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
                    .frame(width: 50, height: 50)
            }
        
            VStack(alignment: .leading, spacing: 20) {
                Text(modelTitle)
                    .multilineTextAlignment(.leading)
                    .font(.callout)
                    .lineLimit(2)
                
                Text(modelComment)
                    .fontWeight(.thin)
                    .foregroundColor(.black)
                    .opacity(0.5)
                    
            }
            
        }
        .frame(height: 150)
        .overlay(alignment: .bottomTrailing) {
            HStack {
                Image(systemName: "calendar")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 10)
                    .foregroundColor(.black)
                    .opacity(0.5)
                    
                Text("2017-06-23")
                    .foregroundColor(.black)
                    .opacity(0.5)
                    .font(.system(size: 13))
            }
            .padding(.bottom, 15)
            
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        ListItemView(modelImageURL: "square.and.arrow.up", modelTitle: "hwbfjabsibicbkjcvdvdvasdfbqsbc", modelComment: "sjdfnbjsdn")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
