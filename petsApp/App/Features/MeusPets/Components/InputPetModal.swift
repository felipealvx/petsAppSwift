//
//  InputPetModal.swift
//  petsApp
//
//  Created by iredefbmac_19 on 26/02/25.
//

import SwiftUI

struct InputPetModal: View {
    
    @State private var petName: String = ""
    
    let input: InputPet
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(input.labelInput)
                .foregroundColor(.black)
            TextField(input.placeholderInput, text: $petName)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(16)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
        }
    }
}

#Preview {
    // InputPetModal()
}
