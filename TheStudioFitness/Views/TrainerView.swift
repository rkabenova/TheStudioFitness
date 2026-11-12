import SwiftUI

struct TrainerView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    ZStack {
                        Circle()
                            .fill(LinearGradient.heroGradient)
                            .frame(width: 120, height: 120)
                        Text("А")
                            .font(.system(size: 48, weight: .bold))
                            .foregroundColor(.white)
                    }
                    .padding(.top, 30)

                    VStack(spacing: 6) {
                        Text(StudioData.trainerName)
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.studioWhite)
                        Text(StudioData.trainerRole)
                            .font(.system(size: 14))
                            .foregroundColor(.studioGreyDim)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.horizontal, 20)

                    VStack(alignment: .leading, spacing: 12) {
                        Text("Главный тренер The Studio")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.studioWhite)
                        Text("Айгуль ведёт направления Jumping, Pilates и Jumping Yoga, помогая клиентам студии прийти в форму и получать удовольствие от тренировок в дружелюбной атмосфере.")
                            .font(.system(size: 14))
                            .foregroundColor(.studioGrey)
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.studioCard)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .padding(.horizontal, 20)
                }
            }
            .background(Color.studioBlack.ignoresSafeArea())
            .navigationTitle("Тренер")
        }
    }
}
