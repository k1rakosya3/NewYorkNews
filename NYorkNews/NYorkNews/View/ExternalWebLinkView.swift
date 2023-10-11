//
//  ExternalWebLinkView.swift
//  NYorkNews
//
//  Created by Admin on 12.10.23.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let url: String
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("more info")
                Spacer()
                Group {
                    Image(systemName: "arrow.up.right.square")
                    if let url = URL(string: url) {
                        Link(destination: url, label: {
                            Text("NewYorkTime")
                                .foregroundColor(.black)
                        })
                    }
                }
            }
            .foregroundColor(.black)
        }
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    
    static var previews: some View {
        ExternalWebLinkView(url: "fegkmm")
            .previewLayout(.sizeThatFits)
    }
}
