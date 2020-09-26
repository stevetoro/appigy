//
//  AppItem.swift
//  appigy
//
//  Created by Steve Toro on 9/26/20.
//

import SwiftUI

struct AppItem: View {
    var app: AppigyApp
    @State var image: Image = Image("app-store")
    
    var body: some View {
        HStack {
            image
                .resizable()
                .frame(width: 40, height: 40)
            VStack (alignment: .leading) {
                Text(app.name)
                Text(app.category)
                    .font(.caption)
                    .fontWeight(.light)
            }
            Spacer()
        }
        .frame(width: 150, height: 80)
        .onAppear(perform: {
            getAppImage(imageName: app.image_name, onComplete: {
                data, error in
                
                guard error == nil else {
                    print(error!)
                    return
                }
                
                if let data = data {
                    self.image = data
                }
            })
        })
    }
}

struct AppItem_Previews: PreviewProvider {
    static var previews: some View {
        AppItem(app: appigyApps[0])
    }
}
