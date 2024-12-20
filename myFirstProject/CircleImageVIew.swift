import SwiftUI

struct CircleImageVIew: View {
    var body: some View {
        Image(systemName: "macbook.and.iphone", variableValue: 1.00)
        .symbolRenderingMode(.monochrome)
        .foregroundColor(Color.accentColor)
        .font(.system(size: 90, weight: .regular))
    }
}

struct LogCircleImageVIew: View {
    var body: some View {
        Image("login_icon").resizable().frame(width: 120, height: 120).clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

#Preview {
    CircleImageVIew()
}
