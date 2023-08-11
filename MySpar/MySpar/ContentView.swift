//
//  ContentView.swift
//  MySpar
//
//  Created by Артем on 11.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            
            ScrollView{
                
                ScrollView(.horizontal){
                    HStack {
                        
                        ForEach(componentsStories , id: \.image) { i in
                            
                            VStack {
                                Button(action: {}) {
                                    Image(i.image)
                                        .resizable()
                                        .frame(width: 85 , height: 85)
                                }
                                
                                
                                Text(i.text)
                                    .frame(width: 99, height: 65)
                                
                                
                            }
                        }
                        
                    }
                    
                }
                .toolbar {
                    ToolbarItem {
                        ZStack{
                            Image("textfield")
                                .resizable()
                                .frame(width: 300 , height: 40)
                                .padding(.trailing , 110)
                            VStack{
                                Button(action: {}) {
                                    Image("toolbarbutton")
                                        .resizable()
                                        .frame(width: 50 , height: 50)
                                        .padding(.bottom ,6)
                                        .padding(.leading , 300)
                                }
                            }
                        }
                    }
                }
                
                
                VStack {
                    Text("Акции и предложения")
                        .font(.bold(.headline)())
                        .padding(.trailing , 200)
                        .padding(3)
                    
                }
                
                
                
                
                
                
                ScrollView(.horizontal){
                    
                    HStack{
                        ForEach((promotionsAndOffers) , id :\.self) { i in
                            
                            Button(action: {}) {
                                Image(i)
                                    .resizable()
                                    .frame(width: 275 , height: 150)
                                
                            }
                            
                            
                        }
                    }
                    
                }
                
                
                
                ScrollView(.horizontal) {
                    HStack{
                        ForEach((catalogOther) , id :\.self) { i in
                            
                            Button(action: {}) {
                                Image(i)
                                    .resizable()
                                    .frame(width: 150 , height: 150)
                                
                            }
                            
                            
                        }
                    }
                }
                
                
                VStack {
                    
                    ScrollView(.horizontal){
                        Image("bonuses")
                            .resizable()
                            .frame(width: 400 , height: 150)
                        
                    }
                    
                }
                
                VStack {
                    Text("Рекомендуем")
                        .font(.bold(.headline)())
                        .padding(.trailing , 240)
                        .padding(5)
                    
                }
                ScrollView (.horizontal){
                    HStack{
                        ForEach(catalogImages , id: \.image) { i in
                            Button(action: {}) {
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                                    
                                        .stroke(Color.black, lineWidth: 5)
                                        .frame(width: 200, height: 200)
                                        .cornerRadius(20)
                                    
                                        .foregroundColor(.white)
                                        .padding(11)
                                    
                                    Image(i.image)
                                        .resizable()
                                        .frame(width: 140 , height: 140)
                                    
                                    Text(i.price)
                                        .padding(.top , 150)
                                        .padding(.trailing , 100)
                                        .foregroundColor(.black)
                                        .font(.bold(.headline)())
                                    Button(action: {print("hello")}) {
                                        Image("pricebutton")
                                            .resizable()
                                            .frame(width: 40 , height: 40)
                                            .padding(.top , 150)
                                            .padding(.leading , 120)
                                    }
                                    Text(i.label ?? "")
                                        .background(.green)
                                        .cornerRadius(4)
                                        .padding(.bottom , 173)
                                        .padding(.trailing , 70)
                                        .foregroundColor(.red)
                                    
                                }
                            }
                        }
                    }
                }
                
                VStack {
                    Text("Сладкое настроение")
                        .font(.bold(.headline)())
                        .padding(.trailing , 200)
                    
                    
                }
                ScrollView (.horizontal){
                    HStack{
                        ForEach(catalogImagesSweet , id: \.image) { i in
                            Button(action: {}) {
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                                    
                                        .stroke(Color.black, lineWidth: 5)
                                        .frame(width: 200, height: 200)
                                        .cornerRadius(20)
                                    
                                        .foregroundColor(.white)
                                        .padding(11)
                                    
                                    Image(i.image)
                                        .resizable()
                                        .frame(width: 140 , height: 140)
                                    
                                    Text(i.price)
                                        .padding(.top , 150)
                                        .padding(.trailing , 100)
                                        .foregroundColor(.black)
                                        .font(.bold(.headline)())
                                    Button(action: {print("hello")}) {
                                        Image("pricebutton")
                                            .resizable()
                                            .frame(width: 40 , height: 40)
                                            .padding(.top , 150)
                                            .padding(.leading , 120)
                                    }
                                    Text(i.label ?? "")
                                        .background(.red)
                                        .cornerRadius(4)
                                        .padding(.bottom , 173)
                                        .padding(.trailing , 110)
                                        .foregroundColor(.white)
                                    
                                }
                            }
                        }
                    }
                }
                
                Text("Все права на приложение зашищены.")
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
