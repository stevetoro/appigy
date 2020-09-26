//
//  ContentView.swift
//  appigy
//
//  Created by Steve Toro on 9/26/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AppList()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
