import Foundation

public struct LanguageDetector {
    public static func detect(text: String) -> String? {
    	let wordLimit = 300
        let words = text
            .lowercased()
            .filterWords()
            .toArray()
            .prefix(wordLimit)
        var matches:Dictionary<String, Int> = [:]
        
        for (commonWord, languages) in CommonWords.get() {
            if (words.contains(commonWord)) {
                for language in languages {
                    matches[language] = matches[language] != nil
                        ? matches[language]! + 1
                        : 1;
                }
            }
        }
        let sortedKeys = Array(matches.keys).sorted(by: {matches[$0]! > matches[$1]!})
        
        return sortedKeys.first
    }
}
