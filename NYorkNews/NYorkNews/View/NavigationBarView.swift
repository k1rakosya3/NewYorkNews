//
//  NavigationBarView.swift
//  NYorkNews
//
//  Created by Admin on 12.10.23.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .foregroundColor(.black)
            })
            Spacer()
            Text("NY Times Most Popular")
                .fontWeight(.semibold)
                .font(.system(size: 20))
            Spacer()
            Image(systemName: "magnifyingglass")
            Spacer()
            Image(systemName: "dot.circle.and.hand.point.up.left.fill")
            
        }
        
        
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
            .frame(height: 80)
            .background(Color.green)
    }
}
