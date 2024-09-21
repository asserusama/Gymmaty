import Foundation

struct GymData {
    static let gyms: [Gym] = [
        Gym(name: "GOLD'S GYM", image: "golds", distance: "3.9 km", price: "1,999 EGP",
            options: [
                GymOption(option: "1 Session", price: "200 EGP"),
                GymOption(option: "5 Sessions", price: "900 EGP"),
                GymOption(option: "10 Sessions", price: "1,800 EGP"),
                GymOption(option: "1 Month", price: "2,000 EGP"),
                GymOption(option: "3 Months", price: "5,500 EGP"),
                GymOption(option: "6 Months", price: "10,000 EGP"),
                GymOption(option: "1 Year", price: "18,000 EGP"),
                GymOption(option: "Family Plan", price: "15,000 EGP"),
                GymOption(option: "Student Discount", price: "1,500 EGP"),
                GymOption(option: "Personal Trainer", price: "300 EGP/session")
            ],
            images: ["1", "2", "3"],
            location: (latitude: 30.029379, longitude: 31.447286)),
        
        Gym(name: "HIT CLAN", image: "hit", distance: "1.8 km", price: "1,499 EGP",
            options: [
                GymOption(option: "1 Session", price: "150 EGP"),
                GymOption(option: "5 Sessions", price: "700 EGP"),
                GymOption(option: "10 Sessions", price: "1,400 EGP"),
                GymOption(option: "1 Month", price: "1,600 EGP"),
                GymOption(option: "3 Months", price: "4,500 EGP"),
                GymOption(option: "6 Months", price: "8,000 EGP"),
                GymOption(option: "1 Year", price: "15,000 EGP"),
                GymOption(option: "Group Classes", price: "1,200 EGP"),
                GymOption(option: "Special Events", price: "250 EGP"),
                GymOption(option: "Nutrition Plan", price: "400 EGP")
            ],
            images: ["1", "2", "3"],
            location: (latitude: 30.030000, longitude: 31.450000)),
        
        Gym(name: "IGNITE", image: "ignite", distance: "2.1 km", price: "2,499 EGP",
            options: [
                GymOption(option: "1 Session", price: "300 EGP"),
                GymOption(option: "5 Sessions", price: "1,400 EGP"),
                GymOption(option: "10 Sessions", price: "2,800 EGP"),
                GymOption(option: "1 Month", price: "3,000 EGP"),
                GymOption(option: "3 Months", price: "8,000 EGP"),
                GymOption(option: "6 Months", price: "15,000 EGP"),
                GymOption(option: "1 Year", price: "28,000 EGP"),
                GymOption(option: "Kickboxing Class", price: "400 EGP"),
                GymOption(option: "Yoga Class", price: "350 EGP"),
                GymOption(option: "Personal Coaching", price: "500 EGP/session")
            ],
            images: ["1", "2", "3"],
            location: (latitude: 30.031000, longitude: 31.451000)),
        
        Gym(name: "LA7", image: "la7", distance: "7.5 km", price: "5,499 EGP",
            options: [
                GymOption(option: "1 Session", price: "500 EGP"),
                GymOption(option: "5 Sessions", price: "2,200 EGP"),
                GymOption(option: "10 Sessions", price: "4,800 EGP"),
                GymOption(option: "1 Month", price: "5,500 EGP"),
                GymOption(option: "3 Months", price: "15,000 EGP"),
                GymOption(option: "6 Months", price: "27,000 EGP"),
                GymOption(option: "1 Year", price: "50,000 EGP"),
                GymOption(option: "Dance Classes", price: "450 EGP"),
                GymOption(option: "Pilates Class", price: "400 EGP"),
                GymOption(option: "Wellness Program", price: "600 EGP")
            ],
            images: ["1", "2", "3"],
            location: (latitude: 30.032000, longitude: 31.452000)),
        
        Gym(name: "WORLD GYM", image: "world", distance: "2.5 km", price: "999 EGP",
            options: [
                GymOption(option: "1 Session", price: "100 EGP"),
                GymOption(option: "5 Sessions", price: "400 EGP"),
                GymOption(option: "10 Sessions", price: "900 EGP"),
                GymOption(option: "1 Month", price: "1,000 EGP"),
                GymOption(option: "3 Months", price: "2,500 EGP"),
                GymOption(option: "6 Months", price: "4,500 EGP"),
                GymOption(option: "1 Year", price: "8,000 EGP"),
                GymOption(option: "Spinning Class", price: "200 EGP"),
                GymOption(option: "Cardio Class", price: "150 EGP"),
                GymOption(option: "Personal Training", price: "250 EGP/session")
            ],
            images: ["1", "2", "3"],
            location: (latitude: 30.033000, longitude: 31.453000)),
        
        Gym(name: "BEFIT 360", image: "befit", distance: "10.3 km", price: "4,599 EGP",
            options: [
                GymOption(option: "1 Session", price: "400 EGP"),
                GymOption(option: "5 Sessions", price: "1,800 EGP"),
                GymOption(option: "10 Sessions", price: "3,800 EGP"),
                GymOption(option: "1 Month", price: "4,500 EGP"),
                GymOption(option: "3 Months", price: "12,000 EGP"),
                GymOption(option: "6 Months", price: "22,000 EGP"),
                GymOption(option: "1 Year", price: "40,000 EGP"),
                GymOption(option: "Zumba Class", price: "350 EGP"),
                GymOption(option: "Nutrition Consultation", price: "500 EGP"),
                GymOption(option: "Bodybuilding Program", price: "600 EGP")
            ],
            images: ["1", "2", "3"],
            location: (latitude: 30.034000, longitude: 31.454000)),
        
        Gym(name: "F45", image: "f45", distance: "11 km", price: "4,799 EGP",
            options: [
                GymOption(option: "1 Session", price: "450 EGP"),
                GymOption(option: "5 Sessions", price: "2,000 EGP"),
                GymOption(option: "10 Sessions", price: "4,200 EGP"),
                GymOption(option: "1 Month", price: "4,800 EGP"),
                GymOption(option: "3 Months", price: "13,000 EGP"),
                GymOption(option: "6 Months", price: "24,000 EGP"),
                GymOption(option: "1 Year", price: "45,000 EGP"),
                GymOption(option: "High-Intensity Class", price: "500 EGP"),
                GymOption(option: "Group Workout", price: "300 EGP"),
                GymOption(option: "Training Camp", price: "1,000 EGP")
            ],
            images: ["1", "2", "3"],
            location: (latitude: 30.035000, longitude: 31.455000))
    ]
}
