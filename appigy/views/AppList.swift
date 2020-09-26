//
//  AppList.swift
//  appigy
//
//  Created by Steve Toro on 9/26/20.
//

import SwiftUI

struct AppList: View {
    var apps = appigyApps
    
    var body: some View {
        NavigationView {
            List(apps, id: \.id) { app in
                NavigationLink(destination: AppDetail(app: app)) {
                    AppItem(app: app)
                }
            }
        }
    }
}

struct AppList_Previews: PreviewProvider {
    static var previews: some View {
        AppList(apps: appigyApps)
    }
}
