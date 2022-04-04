import UIKit

struct User: Decodable {
    let name: String
    let age: Int
}

struct Job: Decodable {
    let name: String
    let description: String
}

struct Curriculum: Decodable {
    var identifier: String
    // Cada substruct debe tener el protocolo Decodeable
    var user: User
    var job: Job
}


let data = """
{
    "identifier": "123456789",
    "user": {
        "name_of_user": "Jhon",
        "age": 30
    },
    "job": {
        "name": "Software Engineer",
        "description": "Knowledge Combine, SwiftUI, UIKit, RxSwift, Cocoapods, etc"
    }
}
""".data(using: .utf8)!

let curriculum = try? JSONDecoder().decode(Curriculum.self, from: data)

curriculum?.identifier
curriculum?.user.name
curriculum?.job.name
