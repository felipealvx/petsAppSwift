////
////  PetCard.swift
////  petsApp
////
////  Created by iredefbmac_19 on 05/02/25.
////
//
//import SwiftUI
//
//struct CardZorbi: View {
//    var comidaFavorita: String = "Frango"
//    var body: some View {
//        RoundedRectangle(cornerRadius: 8)
//            .fill(Color("OffGray"))
////            .fill(.red) // TODO:: APAGAR
//            .overlay {
//                VStack(spacing: 9) {
//                    HStack(spacing: 0){
//                        Image("Cat")
//                            .resizable()
//                            .scaledToFit()
//                            .clipShape(Circle())
//                            .frame(width: 120, height: 100)
//                        VStack(alignment: .leading, spacing: 0) {
//                            HStack {
//                                Text("Zorbi")
//                                    .font(.system(size: 24))
//                                    .foregroundColor(Color("BluePrimary"))
//                                    .bold()
//                                Image("Male")
//                                Spacer()
//                                Text("5 anos")
//                                    .bold()
//                                    .font(.system(size: 18))
//                            }
//                            .padding(.bottom, 10)
//                            
//                            RoundedRectangle(cornerRadius: 8)
//                                .fill(Color("SageGray"))
//                                .overlay{
//                                    VStack(spacing: 0){
//                                        VStack(spacing: 10){
//                                            HStack(spacing: 1) {
//                                                Text("Última Vacina:")
//                                                    .font(.system(size: 16))
//                                                Spacer()
//                                                Text("22/05/25")
//                                                    .font(.system(size: 16))
//                                            }
//                                            HStack(spacing: 1) {
//                                                Text("Próx. Vacina:")
//                                                    .font(.system(size: 16))
//                                                Spacer()
//                                                Text("22/05/25")
//                                                    .font(.system(size: 16))
//                                            }
//                                        }
//                                        .padding(8)
//                                        .background(Color("SageGray"))
//                                        //                                    .frame(maxWidth: .infinity, alignment: .leading)
//                                    }
//                                    .padding(6)
//                                    
//                                }
//                                .frame(height: 50)
//                                .padding(.bottom, 14)
//                        }
//                        .frame(width: .infinity)
//                    }
//                    Button {
//                        // print("Ola mundo")
//                    } label: {
//                        RoundedRectangle(cornerRadius: 10)
//                            .fill(Color.bluePrimary)
//                            .overlay {
//                                Text("Ver mais dados")
//                                    .foregroundColor(.white)
//                            }
//                            
//                    }
//                    .padding(-10)
//                    .frame(height: .infinity)
//                }
//                .padding(10)
//            }
//    }
//    @ViewBuilder func textInline(leftText: String, rightText: String) -> some View {
//        HStack {
//            Text(leftText)
//                .bold()
//                
//            Text(rightText)
//                .fontWeight(.light)
//        }
//        .font(.system(size: 14))
//    }
//}
//
//#Preview {
//    ZStack{
//        Color.gray
//        CardZorbi()
//            .padding()
//            .frame(height: 190)
//    }
//}
