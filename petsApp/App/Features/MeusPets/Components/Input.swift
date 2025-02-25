//
//  Input.swift
//  petsApp
//
//  Created by iredefbmac_19 on 12/02/25.
//

import SwiftUI

struct Input: View {
    @State private var text: String = ""
    var body: some View {
        TextField("Pesquisar Pet...", text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
    }
}

#Preview {
    Input()
}
