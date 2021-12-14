//
//  SelectionLabelView.swift
//  FishyBusiness
//
//  Created by Madison Dellamea on 12/11/21.
//

import SwiftUI

struct SectionLabelView: View {
    // MARK: Stored properties
    let text: String
    
    // MARK: Computed properties
    var body: some View {
        HStack {

            Text(text)
                .font(.title3)
                .bold()

            Spacer()

        }
    }
}

struct SectionLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SectionLabelView(text: "Depth")
    }
}
