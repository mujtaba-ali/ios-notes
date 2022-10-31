//
//  EachNote.swift
//  NotesiOS
//
//  Created by Mohammed Mujtaba Ali on 31/10/22.
//

import SwiftUI

struct EachNote: View {
    var body: some View {
        HStack {
            Text("Note 1").font(.title2)
            Spacer()
        }.padding()
    }
}

struct EachNote_Previews: PreviewProvider {
    static var previews: some View {
        EachNote()
    }
}
