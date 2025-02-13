//
//  ButtonAdd.swift
//  petsApp
//
//  Created by iredefbmac_19 on 12/02/25.
//

import SwiftUI

struct ButtonAdd: View {
    var body: some View {
        Button {
            //
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("BluePrimary"))
                .frame(height: 50)
                .overlay{
                    HStack(){
                        Image(systemName: "plus.app.fill")
                            .foregroundColor(Color.white)
                        Text("Adicionar Pet")
                            .foregroundColor(Color.white)
                    }
                    
                }
        }
    }
}

#Preview {
    ButtonAdd()
}
