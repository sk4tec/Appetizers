import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            Text("Appetiser List View")
                .navigationTitle("🍟 Appetiser")
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
