//
//  JustifiedLabelView.swift
//  justifiableLabelView-SwiftUI
//
//  Created by Abel Lazaro on 21/06/24.
//

import SwiftUI

struct JustifiedLabelView: UIViewRepresentable {
    var text: String
    var textAlignmentStyle: TextAlignmentStyle
    var width: CGFloat
    
    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.textAlignment = NSTextAlignment(rawValue: textAlignmentStyle.rawValue)!
        label.numberOfLines = 70
        label.textColor = .label
        label.preferredMaxLayoutWidth = width
        label.setContentHuggingPriority(.required, for: .horizontal)
        label.setContentHuggingPriority(.required, for: .vertical)
        return label
    }
    
    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = text
    }
}

enum TextAlignmentStyle: Int {
    case left = 0, center = 1, right = 2, justified = 3, natural = 4
}
