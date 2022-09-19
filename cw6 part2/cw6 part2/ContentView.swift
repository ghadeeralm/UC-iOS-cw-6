//
//  ContentView.swift
//  cw6 part2
//
//  Created by ghadeer almajed on 19/09/2022.
//

import SwiftUI
struct DetailView: View {
    let type : String
    let color : Color
    var body: some View {
        
        ZStack{
            color
            Text(type)
        }
        
    }
    
}

struct ContentView: View {
    
    let chooseColor = [Color.black , Color.gray , Color.blue , Color.green]
    @State var type = ""
    @State var selectedColor = Color.clear
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.yellow
                    .ignoresSafeArea()
                VStack{
                    Text("choose your color")
                        .foregroundColor(.white)
                    
                    
                    HStack {
                        ForEach(chooseColor, id: \.self) {
                            color in
                            Circle().frame(width: 50, height: 50)
                                .foregroundColor(color)
                                .onTapGesture {
                                    selectedColor = color
                                }
                        }
                        
                        
                    }
                    Text("what do you want to write?")
                        .foregroundColor(.white)
                    TextField("Type here", text: $type)
                        .border(.white, width: 1)
                    
                    NavigationLink(destination: DetailView(type: type, color: selectedColor)) {
                        Text("save")
                        
                            .clipShape(Capsule())
                            .frame(width: 43, height: 44)
                            .foregroundColor(.green)
                        
                       
                    }
                }
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
