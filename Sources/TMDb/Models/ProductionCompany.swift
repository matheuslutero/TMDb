import Foundation

/// A production company.
public struct ProductionCompany: Identifiable, Codable, Equatable, Hashable {

    /// Company identifier.
    public let id: Company.ID
    /// Company's name.
    public let name: String
    /// Company's country of origin.
    public let originCountry: String
    /// Company's logo path.
    public let logoPath: URL?

    /// Creates a new `ProductionCompany`.
    ///
    /// - Parameters:
    ///    - id: Company identifier.
    ///    - name: Company's country of origin.
    ///    - originCountry: Company's country of origin.
    ///    - logoPath: Company's logo path.
    public init(
        id: Int, name: String,
        originCountry: String,
        logoPath: URL? = nil
    ) {
        self.id = id
        self.name = name
        self.originCountry = originCountry
        self.logoPath = logoPath
    }

}
