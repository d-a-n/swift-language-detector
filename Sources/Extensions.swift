extension String {
    func filterWords() -> String {
        return self.replacingOccurrences(of: "[^\\w]", with: " ", options: .regularExpression, range: nil)
            .replacingOccurrences(of: "[\\s]+", with: " ", options: .regularExpression, range: nil)
    }

    func toArray() -> Array<String> {
        return self.components(separatedBy: " ")
    }
}
