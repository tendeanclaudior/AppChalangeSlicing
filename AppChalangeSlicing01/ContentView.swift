//
//  ContentView.swift
//  AppChalangeSlicing01
//
//  Created by Claudio Tendean on 26/05/23.
//

import SwiftUI

struct ContentView: View {
    @State var search : String = ""
    
    var body: some View {
        ZStack{
            VStack{
                // Header
                Header()
                ScrollView(.vertical, showsIndicators: false) {
                    // Search
                    Search(search: $search)
                    
                    // Top Title
                    TopTitle()
                    
                    // Food Konten
                    FoodKonten()
                    
                    // Second Title
                    SecondTitle()
                    
                    // Kategori
                    Kategori()
                    
                    // Thrid Title
                    Thridtitle()
                    
                    // Second Food Konten
                    KontenSecondFood()
                }
                Spacer()
            }
        }
        .background(Color("Color1"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct Header : View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 3){
                Text("Delivery to")
                    .font(.system(
                        size: 20,
                        weight: .bold,
                        design: .rounded))
                HStack{
                    Image(systemName: "mappin.circle")
                        .foregroundColor(Color.secondary)
                    Text("Hanoi, Vietnam")
                        .font(.system(
                            size: 18,
                            weight: .light,
                            design: .rounded))
                }
            }
            .padding(.leading, 30)
            
            Spacer()
            Image("Profile")
                .resizable()
                .frame(width: 40, height: 40)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .padding(.trailing, 30)
        }.padding(.top, 50)
    }
}

struct Search : View {
    @Binding var search : String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color.white)
                .frame(height: 55)
            HStack {
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                        .frame(width: 55, height: 55)
                        .foregroundColor(Color.secondary)
                    TextField("Search for dish or restaurans", text: $search)
                }
            }
        }
        .padding([.leading, .trailing], 30)
        .padding(.bottom, 10)
    }
}

struct TopTitle : View {
    var body: some View {
        HStack{
            Text("Popular Near")
                .font(.system(
                    size: 18,
                    weight: .bold,
                    design: .rounded))
                .padding(.leading, 30)
            Spacer()
            Text("View More")
                .font(.system(
                    size: 12,
                    weight: .bold,
                    design: .rounded))
                .foregroundColor(Color(.red))
                .padding(.trailing, 30)
        }
        .padding(.bottom, 10)
    }
}

struct KontenFood : View {
    var image : String = ""
    var nameFood : String = ""
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Image(self.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 330, height: 200)
                    .clipped()
                    .cornerRadius(15)
                Text(self.nameFood)
                    .font(.system(
                        size: 18,
                        weight: .bold,
                        design: .rounded))
                Text("Western Cuisine, Fast Food")
                    .font(.system(
                        size: 14,
                        weight: .light,
                        design: .rounded))
                    .foregroundColor(Color.secondary)
                
                HStack{
                    HStack{
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.yellow)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.yellow)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.yellow)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.yellow)
                    }
                    Spacer()
                    
                    HStack{
                        HStack{
                            Image(systemName: "mappin.circle")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color.red)
                                .padding(.leading, 5)
                            Text("254m")
                                .font(.system(
                                    size: 12,
                                    weight: .medium,
                                    design: .rounded))
                                .foregroundColor(Color.red)
                        }
                        .padding(5)
                        .background(Color("Color1"))
                        .cornerRadius(10)
                        
                        HStack{
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color.red)
                                .padding(.leading, 5)
                            Text("27'")
                                .font(.system(
                                    size: 12,
                                    weight: .medium,
                                    design: .rounded))
                                .foregroundColor(Color.red)
                        }
                        .padding(5)
                        .background(Color("Color1"))
                        .cornerRadius(10)
                    }
                }
            }.frame(width: 330)
        }
        .padding(15)
        .background(Color.white)
        .cornerRadius(30)
    }
}

struct FoodKonten : View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 20){
                KontenFood(image: "Food1", nameFood: "Sushi - Japan")
                KontenFood(image: "Food2", nameFood: "Sate Ayam - Manado")
                KontenFood(image: "Food3", nameFood: "Pizza - Brazil")
            }
            .padding([.leading, .trailing], 30)
        }.padding(.bottom, 10)
    }
}

struct SecondTitle : View {
    var body: some View {
        HStack{
            Text("Explore Categories")
                .font(.system(
                    size: 18,
                    weight: .bold,
                    design: .rounded))
                .padding(.leading, 30)
            Spacer()
            Text("Show all")
                .font(.system(
                    size: 12,
                    weight: .bold,
                    design: .rounded))
                .foregroundColor(Color.red)
                .padding(.trailing, 30)
        }
    }
}

struct Icon : View {
    var icon : String = ""
    var title : String = ""
    var places : String = ""
    var color : Color
    
    var body: some View {
        Button(action: {}) {
            HStack{
                VStack{
                    Image(self.icon)
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text(self.title)
                        .font(.system(
                            size: 18,
                            weight: .bold,
                            design: .rounded))
                        .foregroundColor(Color.white)
                    Text(self.places)
                        .font(.system(
                            size: 12,
                            weight: .light,
                            design: .rounded))
                        .foregroundColor(Color.white)
                }
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 20)
                .background(self.color)
                .cornerRadius(15)
            }
        }
    }
}

struct Kategori : View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                Icon(icon: "fork", title: "Food", places: "1000 Places", color: Color.red)
                Icon(icon: "carrot", title: "Vege", places: "100 Places", color: Color.blue)
                Icon(icon: "drink", title: "Drinks", places: "853 Places", color: Color.green)
                Icon(icon: "burger", title: "Burger", places: "934 Places", color: Color.yellow)
            }.padding([.leading, .trailing], 30)
        }
    }
}

struct Thridtitle : View {
    var body: some View {
        HStack{
            Text("Recomended")
                .font(.system(
                    size: 18,
                    weight: .bold,
                    design: .rounded))
                .padding(.leading, 30)
            Spacer()
            Text("Show all")
                .font(.system(
                    size: 12,
                    weight: .bold,
                    design: .rounded))
                .foregroundColor(Color.red)
                .padding(.trailing, 30)
        }
    }
}

struct SecondFood : View {
    var image : String = ""
    var nameFood : String = ""
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Image(self.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 100)
                    .clipped()
                    .cornerRadius(15)
                Text(self.nameFood)
                    .font(.system(
                        size: 18,
                        weight: .bold,
                        design: .rounded))
                Text("Western Cuisine, Fast Food")
                    .font(.system(
                        size: 14,
                        weight: .light,
                        design: .rounded))
                    .foregroundColor(Color.secondary)
                
                VStack(alignment: .leading, spacing: 15){
                    HStack{
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.yellow)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.yellow)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.yellow)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.yellow)
                    }
                    
                    HStack{
                        HStack{
                            Image(systemName: "mappin.circle")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color.red)
                                .padding(.leading, 5)
                            Text("254m")
                                .font(.system(
                                    size: 12,
                                    weight: .medium,
                                    design: .rounded))
                                .foregroundColor(Color.red)
                        }
                        .padding(5)
                        .background(Color("Color1"))
                        .cornerRadius(10)
                        
                        HStack{
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color.red)
                                .padding(.leading, 5)
                            Text("27'")
                                .font(.system(
                                    size: 12,
                                    weight: .medium,
                                    design: .rounded))
                                .foregroundColor(Color.red)
                        }
                        .padding(5)
                        .background(Color("Color1"))
                        .cornerRadius(10)
                    }
                }
            }.frame(width: 200)
        }
        .padding(15)
        .background(Color.white)
        .cornerRadius(30)
    }
}

struct KontenSecondFood : View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20){
                SecondFood(image: "Food2", nameFood: "Sate Ayam - Manado")
                SecondFood(image: "Food3", nameFood: "Pizza - Brazil")
                SecondFood(image: "Food1", nameFood: "Suhshi - Japan")
            }.padding([.leading, .trailing], 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
