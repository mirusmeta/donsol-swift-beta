import SwiftUI

struct ContentView: View {

    @State var goToAuthView: Bool = false
    
    var body: some View {
        NavigationView {
            VStack{
                if goToAuthView {
                    AuthView().transition(.move(edge: .trailing))
                } else{
                    HelloView(goToAuthView: $goToAuthView).transition(.move(edge: .leading))
                }
            }
        }.animation(.easeInOut(duration: 0.5), value: goToAuthView).navigationTitle("")
            .navigationBarHidden(true)
    }
}

struct HelloView: View {
    @Binding var goToAuthView: Bool
    
    var body: some View {
        Spacer()
        VStack{
            CircleImageVIew().offset(y: -40)
            VStack(alignment: .center){
                Text("Добро пожаловать!").font(.largeTitle).foregroundColor(.blue)
                Text("Mirus app - приложение для работы со списком дел").font(.subheadline).padding(.top, 1).padding(.horizontal, 30)
                    .multilineTextAlignment(.center).lineLimit(nil).fixedSize(horizontal: false, vertical: true).frame(maxWidth: .infinity)
            }
        }.offset(y: -30)
        Spacer()
        VStack{
            Button(action:{
                withAnimation{
                    goToAuthView = true
                }
            }){
                RoundedRectangle(cornerRadius:20).fill(Color.blue)
                    .frame( height: 60).overlay{
                        Text("Далее").font(.title2).foregroundColor(.white)
                    }.padding(.horizontal,40)
            }.offset(y: -20)
        }
    }

}

struct AuthView: View {
    var body: some View {
        Spacer()
        VStack{
            LogCircleImageVIew().offset(y: -40)
            VStack(alignment: .center){
                Text("Авторизация").font(.largeTitle).foregroundColor(.blue)
                Text("Для дальнейшей работы со списком дел необходимо авторизоваться с помощью номера телефона").font(.subheadline).padding(.top, 1).padding(.horizontal, 30)
                    .multilineTextAlignment(.center).lineLimit(nil).fixedSize(horizontal: false, vertical: true).frame(maxWidth: .infinity)
            }
        }.offset(y: -30)
        Spacer()
        VStack{
            Button(action:{}){
                RoundedRectangle(cornerRadius:20).fill(Color.blue)
                    .frame( height: 60).overlay{
                        Text("Войти").font(.title2).foregroundColor(.white)
                    }.padding(.horizontal,40)
            }.offset(y: -20)
        }
    }

}

#Preview {
    AuthView()
}
