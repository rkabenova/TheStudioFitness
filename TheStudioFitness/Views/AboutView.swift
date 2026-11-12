import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    infoRow(icon: "mappin.and.ellipse", title: "Адрес", value: StudioData.address)
                    infoRow(icon: "phone.fill", title: "Телефон", value: StudioData.phoneDisplay)
                    infoRow(icon: "person.fill", title: "Главный тренер", value: StudioData.trainerName)
                    infoRow(icon: "globe", title: "Сайт", value: StudioData.website)
                    infoRow(icon: "camera.fill", title: "Instagram", value: StudioData.instagramHandle)

                    Button {
                        openWhatsApp()
                    } label: {
                        Label("Записаться через WhatsApp", systemImage: "message.fill")
                    }
                    .buttonStyle(GradientButtonStyle())
                    .padding(.top, 12)
                }
                .padding(20)
            }
            .background(Color.studioBlack.ignoresSafeArea())
            .navigationTitle("О студии")
        }
    }

    private func infoRow(icon: String, title: String, value: String) -> some View {
        HStack(alignment: .top, spacing: 14) {
            Image(systemName: icon)
                .foregroundColor(.studioPink)
                .frame(width: 22)
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.system(size: 12))
                    .foregroundColor(.studioGreyDim)
                Text(value)
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(.studioWhite)
            }
        }
        .padding(14)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.studioCard)
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
    }

    private func openWhatsApp() {
        let text = "Здравствуйте! Хочу записаться на занятие в The Studio."
        let encoded = text.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        if let url = URL(string: "https://api.whatsapp.com/send?phone=\(StudioData.phoneWhatsApp)&text=\(encoded)") {
            UIApplication.shared.open(url)
        }
    }
}
