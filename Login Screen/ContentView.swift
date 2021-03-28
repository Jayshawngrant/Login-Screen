//
//  ContentView.swift
//  Login Screen
//
//  Created by Jayshawn Grant on 3/25/21.
//

import SwiftUI

struct ContentView: View {
   
    @State var user = ""
    @State var pass = ""
    @State var show = false
    
    
    var body: some View {
        
        
        ZStack {
            LinearGradient.init(gradient: .init(colors: [Color("1"),Color("2")]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("Rutgers").resizable().frame(width: 80, height: 80).padding(.bottom, 15)
                
                HStack {
                    Image(systemName: "person.fill").resizable().frame(width: 20, height: 20)
                    
                    TextField("Username", text: $user).padding(.leading, 12).font(.system(size:20))
                }.padding(12)
                .background(Color("Color"))
                .cornerRadius(20)
                
                
                HStack {
                    Image(systemName: "lock.fill").resizable().frame(width: 15, height: 20).padding(.leading,3  )
                    
                    SecureField("Password", text: $pass).padding(.leading, 12).font(.system(size:20))
                }.padding(12)
                .background(Color("Color"))
                .cornerRadius(20)
                .offset(y: 15)
                
                Button(action: {
                    
                    self.show.toggle()
                    
                }) {
                    
                    Text("Login").foregroundColor(.white).padding().frame(width: 150)
                }
                .background(LinearGradient.init(gradient: .init(colors: [Color("1"),Color("2")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(20)
                .offset(y:25)
                .shadow(radius: 15)
                
            }
            .padding(.horizontal,18)
        }.alert(isPresented: $show) {
            Alert(title: Text(self.user), message: Text(self.pass), dismissButton: .none)
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
