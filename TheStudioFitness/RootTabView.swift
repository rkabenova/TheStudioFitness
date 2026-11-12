import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Главная", systemImage: "house.fill") }

            ScheduleView()
                .tabItem { Label("Расписание", systemImage: "calendar") }

            TrainerView()
                .tabItem { Label("Тренер", systemImage: "person.fill") }

            AboutView()
                .tabItem { Label("О студии", systemImage: "info.circle.fill") }
        }
        .tint(.studioPink)
        .background(Color.studioBlack)
    }
}
