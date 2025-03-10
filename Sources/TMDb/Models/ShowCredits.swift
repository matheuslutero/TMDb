import Foundation

/// Credits for a movie or TV show.
///
/// A person can be both a cast member and crew member of the same show.
public struct ShowCredits: Identifiable, Decodable, Equatable, Hashable {

    /// Movie or TV show identifier.
    public let id: Int
    /// Cast members of the show.
    public let cast: [CastMember]
    /// Crew members of the show.
    public let crew: [CrewMember]

    /// Creates a new `ShowCredits`.
    ///
    /// - Parameters:
    ///    - id: Movie or TV show identifier.
    ///    - cast: Cast members of the show.
    ///    - crew: Crew members of the show.
    public init(id: Int, cast: [CastMember], crew: [CrewMember]) {
        self.id = id
        self.cast = cast
        self.crew = crew
    }

}
