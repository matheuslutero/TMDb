@testable import TMDb
import XCTest

final class PersonPageableListTests: XCTestCase {

    func testDecodeReturnsPersonPageableList() throws {
        let result = try JSONDecoder.theMovieDatabase
            .decode(PersonPageableList.self, fromResource: "person-pageable-list")

        XCTAssertEqual(result.page, list.page)
        XCTAssertEqual(result.results, list.results)
        XCTAssertEqual(result.totalResults, list.totalResults)
        XCTAssertEqual(result.totalPages, list.totalPages)
    }

    // swiftlint:disable line_length
    private let list = PersonPageableList(
        page: 1,
        results: [
            Person(
                id: 287,
                name: "Brad Pitt",
                alsoKnownAs: [
                    "Бред Питт",
                    "Бред Пітт",
                    "Buratto Pitto",
                    "Брэд Питт"
                ],
                knownForDepartment: "Acting",
                biography: "William Bradley 'Brad' Pitt (born December 18, 1963) is an American actor and film producer. Pitt has received two Academy Award nominations and four Golden Globe Award nominations, winning one. He has been described as one of the world's most attractive men, a label for which he has received substantial media attention. Pitt began his acting career with television guest appearances, including a role on the CBS prime-time soap opera Dallas in 1987. He later gained recognition as the cowboy hitchhiker who seduces Geena Davis's character in the 1991 road movie Thelma & Louise. Pitt's first leading roles in big-budget productions came with A River Runs Through It (1992) and Interview with the Vampire (1994). He was cast opposite Anthony Hopkins in the 1994 drama Legends of the Fall, which earned him his first Golden Globe nomination. In 1995 he gave critically acclaimed performances in the crime thriller Seven and the science fiction film 12 Monkeys, the latter securing him a Golden Globe Award for Best Supporting Actor and an Academy Award nomination.",
                birthday: DateFormatter.theMovieDatabase.date(from: "1963-12-18"),
                deathday: nil,
                gender: .male,
                placeOfBirth: "Shawnee, Oklahoma, USA",
                profilePath: URL(string: "/kU3B75TyRiCgE270EyZnHjfivoq.jpg"),
                popularity: 10.647,
                imdbID: "nm0000093",
                homepageURL: nil
            )
        ],
        totalResults: 1,
        totalPages: 1
    )
    // swiftlint:enable line_length

}
