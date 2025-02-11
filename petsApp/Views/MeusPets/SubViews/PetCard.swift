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
            .fill(Color("OffGray"))
//            .fill(.red) // TODO:: APAGAR
            .overlay {
                HStack(spacing: 9) {
                    Image("Cat")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(4)
            
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Text("Zorbi")
                                .font(.system(size: 24))
                                .foregroundColor(Color("BluePrimary"))
                                .bold()
                            Spacer()
                            Text("5 anos")
                                .bold()
                                .font(.system(size: 18))

                            Image("Male")
                            
                        }
                        .padding(.bottom, 14)

                        RoundedRectangle(cornerRadius: 3)
                            .fill(Color("SageGray"))
                            .overlay{
                                VStack(spacing: 0){
                                    HStack(spacing: 1) {
                                        Image(systemName: "syringe")
                                            .font(.system(size: 16))
                                        Text("Última Vacina:")
                                            .font(.system(size: 16))
                                        Spacer()
                                        Text("22/05/25")
                                            .font(.system(size: 16))
                                    }
                                    HStack(spacing: 1) {
                                        Image(systemName: "syringe")
                                            .font(.system(size: 16))
                                        Text("Próx. Vacina:")
                                            .font(.system(size: 16))
                                        Spacer()
                                        Text("22/05/25")
                                            .font(.system(size: 16))
                                    }
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding(.leading, 6)
                            }
                            .frame(height: 50)
                            .padding(.bottom, 14)

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
                    }
                }
                .padding(10)
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
    ZStack{
        Color.gray
        CardZorbi()
            .padding()
            .frame(height: 190)
    }
}
