//
//  AddNote.swift
//  NotesiOS
//
//  Created by Mohammed Mujtaba Ali on 31/10/22.
//

import SwiftUI

struct AddNote: View {
    @State var title: String = ""
    @State var description: String = ""
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                TextField("Title", text: $title).padding(.all, 10).multilineTextAlignment(.center).border(Color.black, width: 0.5).font(.title2)
                TextField("Description", text: $description, axis: .vertical).padding().font(.title3).border(Color.black, width: 0.5)
                Spacer()
            }.padding().navigationTitle("New Note").toolbar{
                ToolbarItemGroup {
                    Button("Delete"){}.foregroundColor(Color.red)
                    Button("Save"){}
                    
                }
            }
        }
        
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
