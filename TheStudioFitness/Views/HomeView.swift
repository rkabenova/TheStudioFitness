import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    heroHeader

                    HStack(spacing: 12) {
                        quickAction(title: "Расписание", subtitle: "Смотреть занятия", icon: "calendar")
                        quickAction(title: "Записаться", subtitle: "Через WhatsApp", icon: "message.fill")
                    }
                    .padding(.horizontal, 20)

                    sectionHeader("Направления")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 14) {
                            ForEach(StudioData.classes) { item in
                                classCard(item)
                            }
                        }
                        .padding(.horizontal, 20)
                    }

                    sectionHeader("О студии")
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(StudioData.facts, id: \.self) { fact in
                            HStack(alignment: .top, spacing: 10) {
                                Circle().fill(Color.studioGold).frame(width: 6, height: 6).padding(.top, 6)
                                Text(fact)
                                    .foregroundColor(.studioGrey)
                                    .font(.system(size: 14))
                            }
                        }
                    }
                    .padding(.horizontal, 20)

                    sectionHeader("Отзывы")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 14) {
                            ForEach(StudioData.testimonials) { t in
                                testimonialCard(t)
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                    .padding(.bottom, 24)
                }
            }
            .background(Color.studioBlack.ignoresSafeArea())
            .navigationBarHidden(true)
        }
    }

    private var heroHeader: some View {
        ZStack(alignment: .bottomLeading) {
            LinearGradient.heroGradient
                .frame(height: 220)
                .clipShape(RoundedRectangle(cornerRadius: 0))

            VStack(alignment: .leading, spacing: 8) {
                Text("THE STUDIO")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
                Text("Jumping · Pilates · Yoga · Stretching")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white.opacity(0.85))
                HStack(spacing: 4) {
                    Image(systemName: "star.fill").foregroundColor(.studioGold).font(.system(size: 12))
                    Text("\(StudioData.rating) · \(StudioData.ratingCount)")
                        .font(.system(size: 12))
                        .foregroundColor(.white.opacity(0.85))
                }
            }
            .padding(20)
        }
    }

    private func quickAction(title: String, subtitle: String, icon: String) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: icon)
                .font(.system(size: 20))
                .foregroundColor(.studioPink)
            Text(title)
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.studioWhite)
            Text(subtitle)
                .font(.system(size: 12))
                .foregroundColor(.studioGreyDim)
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.studioCard)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }

    private func sectionHeader(_ title: String) -> some View {
        Text(title)
            .font(.system(size: 18, weight: .bold))
            .foregroundColor(.studioWhite)
            .padding(.horizontal, 20)
    }

    private func classCard(_ item: FitnessClass) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: item.icon)
                .font(.system(size: 22))
                .foregroundColor(.studioGold)
            Text(item.title)
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.studioWhite)
            Text(item.subtitle)
                .font(.system(size: 12))
                .foregroundColor(.studioGreyDim)
        }
        .padding(16)
        .frame(width: 140, alignment: .leading)
        .background(Color.studioCard)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }

    private func testimonialCard(_ t: Testimonial) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("\"\(t.text)\"")
                .font(.system(size: 13))
                .foregroundColor(.studioGrey)
                .fixedSize(horizontal: false, vertical: true)
            Text("— \(t.author)")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(.studioGreyDim)
        }
        .padding(16)
        .frame(width: 220, alignment: .leading)
        .background(Color.studioCard)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}
