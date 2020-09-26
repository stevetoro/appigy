//
//  AppList.swift
//  appigy
//
//  Created by Steve Toro on 9/26/20.
//

import SwiftUI

struct AppList: View {
    @State var apps = [AppigyApp]()
    
    var body: some View {
        NavigationView {
            List(apps, id: \.id) { app in
                NavigationLink(destination: AppDetail(app: app)) {
                    AppItem(app: app)
                }
            }
        }
        .onAppear{
            getApps(onComplete: {
                apps, error in
                
                guard error == nil else {
                    print(error!)
                    return
                }
                
                if let apps = apps {
                    self.apps = apps
                }
            })
        }
    }
}

struct AppList_Previews: PreviewProvider {
    static var previews: some View {
        AppList(apps: appigyApps)
    }
}
