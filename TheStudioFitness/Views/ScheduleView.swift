import SwiftUI

struct ScheduleView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(StudioData.schedule) { day in
                        VStack(alignment: .leading, spacing: 10) {
                            Text(day.day)
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.studioGold)
                                .padding(.horizontal, 20)

                            VStack(spacing: 8) {
                                ForEach(day.items) { item in
                                    HStack {
                                        Text(item.time)
                                            .font(.system(size: 14, weight: .semibold))
                                            .foregroundColor(.studioGold)
                                            .frame(width: 56, alignment: .leading)
                                        VStack(alignment: .leading, spacing: 2) {
                                            Text(item.className)
                                                .font(.system(size: 15, weight: .semibold))
                                                .foregroundColor(.studioWhite)
                                            Text(item.trainer)
                                                .font(.system(size: 12))
                                                .foregroundColor(.studioGreyDim)
                                        }
                                        Spacer()
                                    }
                                    .padding(14)
                                    .background(Color.studioCard)
                                    .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                                }
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                }
                .padding(.vertical, 20)
            }
            .background(Color.studioBlack.ignoresSafeArea())
            .navigationTitle("Расписание")
        }
    }
}
