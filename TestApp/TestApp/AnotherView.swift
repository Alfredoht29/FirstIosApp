//
//  AnotherView.swift
//  TestApp
//
//  Created by Emilio Perez on 11/03/23.
//

import SwiftUI

struct AnotherView: View {
    var body: some View {
        VStack{
            Text("Ahora si te quiero muchisimo").bold().font(.system(size: 40))
        }//.navigationBarBackButtonHidden(true)
    }
}

struct AnotherView_Previews: PreviewProvider {
    static var previews: some View {
        AnotherView()
    }
}
