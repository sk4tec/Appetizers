import SwiftUI

struct AppetizerListViewCell: View {
    let appetizer: Appetizer

    var body: some View {
        HStack {
            Image(appetizer.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 120, maxHeight: 90)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text(appetizer.description)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

struct AppetizerListViewCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListViewCell(appetizer: MockData.sampleAppetizer)
    }
}
