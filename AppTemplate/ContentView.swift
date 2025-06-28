import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                VStack(spacing: 30) {
                    // Header
                    VStack(spacing: 8) {
                        Image(systemName: "leaf.fill")
                            .font(.system(size: 50))
                            .foregroundColor(Color.mint)
                        Text("خوش آمدید")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Text("برای ادامه وارد حساب تان شوید")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    // Input Fields
                    VStack(spacing: 16) {
                        VStack(alignment: .trailing){
                            Text("ایمیل")
                                .foregroundColor(.black)
                            TextField("ایمیل تان را وارد کنید", text: $email)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(12)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.trailing)
                        }
                        VStack(alignment: .trailing){
                            Text("رمز عبور")
                                .foregroundColor(.black)
                            SecureField("رمز عبور تان را وارد کنید", text: $password)
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(12)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.trailing)
                        }
                    }
                    
                    // Login Button - Navigation to HomeView
                    NavigationLink(destination: HomeView()) {
                        Text("وارد شوید")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.mint)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                    
                    // Divider
                    HStack {
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray.opacity(0.3))
                        Text("یا")
                            .foregroundColor(.gray)
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray.opacity(0.3))
                    }
                    
                    // Sign Up Button - Navigation to SignUpView
                    NavigationLink(destination: SignupView()) {
                        Text("ثبت نام کنید")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .cornerRadius(12)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 24)
                .padding(.top, 50)
            }
        }
    }
}

#Preview {
    ContentView()
}
