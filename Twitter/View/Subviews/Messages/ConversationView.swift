import SwiftUI

struct ConversationView: View {
    @State var isShowingNewMessageView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            ScrollView {
                LazyVStack {
                    ForEach(0..<100) { _ in
                        NavigationLink(destination: ChatView(), label: {
                            ConversationCell()
                        })
                        
                    }
                }
                .padding()
            }
            
            Button(action: {
                self.isShowingNewMessageView.toggle()
            }, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .foregroundColor(.white)
            .background(Color.tweetButtonColor)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingNewMessageView, content: {
                SearchView()
            })
        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
