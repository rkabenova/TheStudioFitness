import SwiftUI

struct FitnessClass: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let icon: String
}

struct ScheduleItem: Identifiable {
    let id = UUID()
    let time: String
    let className: String
    let trainer: String
}

struct DaySchedule: Identifiable {
    let id = UUID()
    let day: String
    let items: [ScheduleItem]
}

struct Testimonial: Identifiable {
    let id = UUID()
    let author: String
    let text: String
}

enum StudioData {
    static let phoneDisplay = "+7 706 419-19-92"
    static let phoneWhatsApp = "77064191992"
    static let address = "ул. Санжара Асфендиярова, 5, Астана"
    static let instagramHandle = "@thestudio_fitness.jumping"
    static let instagramUrl = "https://instagram.com/thestudio_fitness.jumping"
    static let website = "sportsciencethestudio.tilda.ws"
    static let websiteUrl = "https://sportsciencethestudio.tilda.ws"
    static let rating = "4.9"
    static let ratingCount = "46 оценок · 28 отзывов"
    static let trainerName = "Айгуль"
    static let trainerRole = "Главный тренер · Jumping, Pilates & Yoga"

    static let classes: [FitnessClass] = [
        FitnessClass(title: "Jumping", subtitle: "Фитнес на батутах", icon: "figure.jumprope"),
        FitnessClass(title: "Pilates", subtitle: "Гибкость и осанка", icon: "figure.pilates"),
        FitnessClass(title: "Jumping Yoga", subtitle: "Йога на батутах", icon: "figure.yoga"),
        FitnessClass(title: "Stretching", subtitle: "Растяжка", icon: "figure.flexibility")
    ]

    static let schedule: [DaySchedule] = [
        DaySchedule(day: "Понедельник", items: [
            ScheduleItem(time: "09:00", className: "Jumping", trainer: trainerName),
            ScheduleItem(time: "18:30", className: "Pilates", trainer: trainerName)
        ]),
        DaySchedule(day: "Вторник", items: [
            ScheduleItem(time: "10:00", className: "Jumping Yoga", trainer: trainerName)
        ]),
        DaySchedule(day: "Среда", items: [
            ScheduleItem(time: "09:00", className: "Jumping", trainer: trainerName),
            ScheduleItem(time: "19:00", className: "Stretching", trainer: trainerName)
        ]),
        DaySchedule(day: "Четверг", items: [
            ScheduleItem(time: "10:00", className: "Pilates", trainer: trainerName)
        ]),
        DaySchedule(day: "Пятница", items: [
            ScheduleItem(time: "09:00", className: "Jumping", trainer: trainerName),
            ScheduleItem(time: "18:30", className: "Jumping Yoga", trainer: trainerName)
        ]),
        DaySchedule(day: "Суббота", items: [
            ScheduleItem(time: "11:00", className: "Stretching", trainer: trainerName)
        ])
    ]

    static let testimonials: [Testimonial] = [
        Testimonial(author: "Клиентка студии", text: "Отличные тренировки, Айгуль — супер мотивирующий тренер!"),
        Testimonial(author: "Клиентка студии", text: "Jumping — это восторг, после работы снимает весь стресс."),
        Testimonial(author: "Клиентка студии", text: "Уютная атмосфера и видно, что тренер вкладывается в каждого.")
    ]

    static let facts: [String] = [
        "Рейтинг \(rating) — \(ratingCount)",
        "Единственная студия в районе с Jumping Yoga",
        "Небольшие группы — индивидуальное внимание"
    ]
}
