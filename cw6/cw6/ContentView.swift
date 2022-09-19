//
//  ContentView.swift
//  cw6
//
//  Created by ghadeer almajed on 19/09/2022.
//

import SwiftUI

struct student: Identifiable {
    let id = UUID()
    let name: String
    let year: Int
    let age: Int
    
    
}




struct ContentView: View {
    @State var students = [ student( name: "fatma", year: 3, age: 20), student(name: "haya", year: 4, age: 23), student(name: "ghalia", year: 1, age: 19),student(name: "dana", year: 4, age: 22)]
    
    var body: some View {
      //  Text("Hello, world!")
            // .padding()
        VStack{
            Image("id")
                .resizable()
                .scaledToFit()
        List(){
            ForEach (students){
                student in
                VStack(alignment:.leading){
                    HStack{
                        Text("Name:")
                        Text(student.name)
                    }
                    
                    HStack{
                        Text("Year:")
                        Text(String(student.year))
                        
                    }
                    
                    HStack{
                        Text("Age:")
                        Text(String(student.age))
                    }
            }
                
        }
           
        
        }
            Spacer()
            HStack {
                Image(systemName: "info.circle")
                Text("number of students: \(students.count)")
                    .clipShape(Capsule())
                    .foregroundColor(.pink)
            }
            .border(.blue, width:1)
        }
    }
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    

    
        
        
}
