//
//  ContentView.swift
//  justifiableLabelView-SwiftUI
//
//  Created by Abel Lazaro on 21/06/24.
//

import SwiftUI

struct ContentView: View {
    let text = "In this repository, you will find the code to create a label with justified text for SwiftUI since the Text class does not allow justified text alignment. This is a demonstration of how the label with justified text looks in a SwiftUI application. By using this custom label, you can ensure that the text is evenly distributed across the width of the container, creating a clean and professional appearance. This solution is particularly useful for displaying longer paragraphs of text where a justified alignment can improve readability and aesthetics."
    var body: some View {
        VStack {
            JustifiedLabelView(text: text, textAlignmentStyle: .justified, width: UIScreen.main.bounds.width - 60)
                .font(.system(size: 17))
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
                .frame(width: UIScreen.main.bounds.width - 60)
                .padding(15)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
