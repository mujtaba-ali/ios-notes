//
//  Notes.swift
//  NotesiOS
//
//  Created by Mohammed Mujtaba Ali on 31/10/22.
//

import SwiftUI

struct Notes: View {
    var body: some View {
        NavigationStack {
            Text("hello").navigationTitle("Notes")
                .toolbar{ ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink(destination: AddNote()) {
                        Label("New", systemImage: "plus")
                    }
                }}
        }
    }
}

struct Notes_Previews: PreviewProvider {
    static var previews: some View {
        Notes()
    }
}
