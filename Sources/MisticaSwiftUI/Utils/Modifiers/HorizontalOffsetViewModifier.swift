import Foundation
import SwiftUI

@available(iOS 13.0, *)
public extension View {
    func horizontal(offset x: CGFloat?) -> some View {
        modifier(HorizontalOffsetModifier(x: x))
    }
}

@available(iOS 13.0, *)
struct HorizontalOffsetModifier: ViewModifier {
    let x: CGFloat?

    func body(content: Content) -> some View {
        if let x = x {
            content.offset(x: x)
        } else {
            content
        }
    }
}
