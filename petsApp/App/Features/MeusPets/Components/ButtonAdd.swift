//
//  ButtonAdd.swift
//  petsApp
//
//  Created by iredefbmac_19 on 12/02/25.
//

import SwiftUI

struct ButtonAdd: View {
    @State private var isSheetPresented: Bool = false
    var body: some View {
        Button {
            isSheetPresented.toggle()
        } label: {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.teal)
                .frame(height: 52)
                .overlay{
                    HStack(){
                        Image(systemName: "plus")
                            .foregroundColor(Color.white)
                        Spacer()
                        Text("Adicionar Pet")
                            .foregroundColor(Color.white)
                    }
                    .bold()
                    .font(.system(size: 18))
                    .padding()
                    
                }
        }
    }
}

#Preview {
    ButtonAdd()
}
