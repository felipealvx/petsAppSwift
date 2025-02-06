//
//  PetCard.swift
//  petsApp
//
//  Created by iredefbmac_19 on 05/02/25.
//

import SwiftUI

struct CardZorbi: View {
    var comidaFavorita: String = "Frango"
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(Color.offGray)
            .overlay {
                HStack {
                    Image("Cat")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(4)
            
                    VStack(alignment: .leading) {
                        Text("Zorbi")
                            .font(.system(size: 24))
                            .foregroundColor(Color.bluePrimary)
                            .bold()
                        RoundedRectangle(cornerRadius: 3)
                            .fill(Color.sageGray)
                            .overlay{
                                Text("Idade: 2 anos")
                            }
                            
                        Text("Comida favorita: Peixe")
                        Text("Proxima: 2024-01-01")
                        Button {
                            // print("Ola mundo")
                        } label: {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.bluePrimary)
                                .overlay {
                                    Text("Ver mais dados")
                                        .foregroundColor(.white)
                                }
                                
                        }
                    Spacer()
                    }
                }
                .padding()
            }
    
            
    }
    @ViewBuilder func textInline(leftText: String, rightText: String) -> some View {
        HStack {
            Text(leftText)
                .bold()
                
            Text(rightText)
                .fontWeight(.light)
        }
        .font(.system(size: 14))
    }
}

#Preview {
    CardZorbi()
        .padding()
        .frame(height: 230)
}
