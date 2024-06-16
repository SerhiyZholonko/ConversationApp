//
//  AIView.swift
//  ConversationsApp
//
//  Created by apple on 15.06.2024.
//

import SwiftUI


struct AIView: View {
    @Binding var selectionLevel: String?
    @Binding var selection: String?
    @Binding var titleText: String
    @Binding var tagText: String
    var body: some View {
        VStack() {
            HStack {
                ZStack(alignment: .bottomTrailing){
                        ZStack {
                            Rectangle()
                                .fill(.select)
                                .frame(width: 100, height: 100)
                                .cornerRadius(8)
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.second)
                        }
                     
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "pencil.circle.fill")
                            .resizable()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.second)
                            .offset(x:5, y: 5)
                    })
                    
                }
                Spacer()
            }
         
            
            HStack{
                Text("Title")
                    .font(.title3)
                    .frame(width: 70)
                    .padding(.horizontal)
                TextField(text: $titleText) {
                    Text("Enter title")
                        .padding()
                }
                .padding()

                .background(.black.opacity(0.1))
                .cornerRadius(12)

            }
            .padding(.vertical)
            HStack {
                Text("Tag #")
                    .font(.title3)
                    .frame(width: 70)
                    .padding(.horizontal)
                TextField(text: $tagText) {
                    Text("Enter tag")
                        .padding()
                }
                .padding()

                .background(.black.opacity(0.1))
                .cornerRadius(12)

            }
            //MARK: - Level
            HStack {
                Text("Level")
                    .font(.title3)
                    .frame(width: 70)
                    .padding(.horizontal)
                DropDownView(
                    hint: "elementary A1", options: [
                        "elementary A1",
                        "elementary A2",
                        "intermediate B1",
                        "intermediate B2",
                        "advanced C1"],
                    selection: $selectionLevel)
                
            }
            .padding(.vertical)
            .zIndex(2)
            //MARK: - Size
            HStack {
                Text("Size")
                    .font(.title3)
                    .frame(width: 70)
                    .padding(.horizontal)
                DropDownView(
                    hint: "10 sentences", options: [
                        "10 sentences",
                        "20 sentences",
                        "30 sentences",
                        "40 sentences"],
                    selection: $selection)

                
            }
            .zIndex(1)
            .padding(.vertical)

            Button(action: {
                print("Test")
            }, label: {
                ZStack{
                    Text("Generate")
                        .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                        .font(.title2)
                        .foregroundColor(.white)
                    Capsule().fill(.second)
                }
            })
            .frame(width: 300, height: 48)
            .frame( maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
         

        
           

           
          
                
            
            Spacer()
                .navigationBarTitleDisplayMode(.inline)

        }
        .padding()
    }
}
