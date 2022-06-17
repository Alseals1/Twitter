import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    
    var body: some View {
        
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack(alignment: .leading) {
                ForEach(0..<200) { _ in
                    HStack {
                        Spacer()
                    }
                    UserCell()
                }
            }.padding(.leading)
        }
        .navigationTitle("Search")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SearchViewView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
