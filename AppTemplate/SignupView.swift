import SwiftUI

struct SignupView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("ثبت نام")
                .font(.largeTitle)
                .fontWeight(.bold)
            Image(systemName: "person.badge.plus.fill")
                .font(.system(size: 60))
                .foregroundColor(.mint)
            Text("در این صفحه کاربر ثبت نام می‌کند.")
                .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    SignupView()
}
