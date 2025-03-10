//
//  InputPetModal.swift
//  petsApp
//
//  Created by iredefbmac_19 on 26/02/25.
//

import SwiftUI

struct InputPetModal: View {
    
    @Binding var inputValue: String
    
    let input: InputPet
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(input.labelInput)
                .foregroundColor(.black)
            TextField(input.placeholderInput, text: $inputValue)
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
    InputPetModal(inputValue: .constant(""), input: .init(placeholderInput: "Placeholder", labelInput: "Label"))
}
