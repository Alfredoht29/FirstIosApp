//
//  ContentView.swift
//  TestApp
//
//  Created by Emilio Perez on 04/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        NavigationView{
            FirstView()
        }
    }
}
struct FirstView:View{
    @State var txt:String="No te quiero"
    var body: some View {
        VStack {
            Text(txt).bold().font(.system(size:30)).position(x:180,y:40).padding()
            
            NavigationLink(destination: AnotherView(), label: {Text("siguiente").foregroundColor(Color.white)
                .padding()
                .background(Color.blue
                .cornerRadius(10))})
                .position(x:200,y:10)
                .shadow(radius:10)
            Button(action: {
                if txt=="No te quiero" {
                    self.txt="Te quiero mucho"
                }
                else{
                    self.txt="No te quiero"
                }
            }, label: {
                Text("otra cosa").font(.headline)
                    .padding()
                    .padding(.horizontal,10)
                    .foregroundColor(Color.white)
                    .background(Color.blue
                    .cornerRadius(10)
                    .shadow(radius: 10))
            }).position(x:200)
            
            Image("Image1").resizable().scaledToFit().position(x:200,y:50)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
