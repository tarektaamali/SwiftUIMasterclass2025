//
//  CardView.swift
//  Hike
//
//  Created by MacBookPro-Taamalli on 4/18/25.
//

import SwiftUI

struct CardView: View {
    // Mark: - PROPERTIES
    @State private var imageNumber : Int = 1
    @State private var randomNumber : Int = 1
    
    // Mark: - Functions
    
    func randomImage() {
        print("The Button was pressed")
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    
    
    var body: some View {
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hikings")
                            .fontWeight(.black)
                            .font(.system(size: 45))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                            )
                        Spacer()
                        
                        Button{
                            // Action
                            print("The button was pressed")
                        } label: {
                            CustomButtonView()
                            /* Text("Explore")
                             .fontWeight(.black)
                             .font(.system(size: 24))
                             .foregroundColor(.white)
                             */
                        }
                        
                        
                    }
                    
                    Text("Fun and enjoyable outdoor activities for friends and family")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 32)
                
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [Color("ColorIndigoMedium"),     Color("ColorSalmonLight")], startPoint: .topLeading, endPoint: .bottomTrailing)
                            
                        )
                        .frame(width: 256, height: 256)
                    
                    
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                    // Mark Footer
                }
                
                
                Button{
                    // Action interdit : Generate a random number
                    print("The button was pressed")
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x:1, y :2)
                }
                .buttonStyle(GradientButtonStyle())
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
