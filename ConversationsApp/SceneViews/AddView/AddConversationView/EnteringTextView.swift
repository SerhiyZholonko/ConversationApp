//
//  EnteringTextView.swift
//  ConversationsApp
//
//  Created by apple on 22.06.2024.
//

import SwiftUI

struct EnteringTextView: View {
    @Binding var text: String
    @State var isAddFile: Bool = false
    var body: some View {
        VStack {
Spacer()
        HStack {
            Spacer()
            VStack {
                Button(action: {
                    withAnimation(.bouncy){
                        isAddFile.toggle()
                    }
                }, label: {
                    Image(systemName:isAddFile ? "chevron.down" : "plus.app.fill")
                        .resizable()
                        .frame(width: isAddFile ? 32 : 48, height: isAddFile ? 12 : 48)
                })
                .padding(.bottom)
                
                VStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "camera.viewfinder")
                            .resizable()
                            .frame(width: 48, height: 48)
                    })
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "doc.badge.plus")
                            .resizable()
                            .frame(width: 48, height: 48)
                    })
                }
                .frame(height:isAddFile ? 96 : 0)
                .opacity(isAddFile ? 1 : 0)
                
                
            }
            .foregroundColor(Color.select)
           .padding(.horizontal)
            
        }
            
        ZStack {
            TextField("Please add some sentence.", text: $text)
                .frame(width: 250, height: 48)
                .padding(.leading)
                .padding(.trailing, 110)
                .background(
                    ZStack(alignment: .trailing) {
                        Capsule()
                            .fill(.second)
                        HStack {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image(systemName: "mic.square.fill")
                                    .resizable()
                                    .frame(width: 48, height: 48)
                                    .onTapGesture {
                                        print("Sent a text \(text)")
                                    }
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                
                                Image(systemName: "t.square.fill")
                                    .resizable()
                                    .frame(width: 48, height: 48)
                                    .onTapGesture {
                                        print("Sent a text \(text)")
                                    }
                            })
                        }
                        .foregroundColor(.select)
                        
                    }
                    
                )
        }
    }
    }
}


#Preview {
    EnteringTextView(text: .constant("Some text"))
}
