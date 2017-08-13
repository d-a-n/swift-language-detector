# LanguageDetector
[![Build Status](https://travis-ci.org/d-a-n/swift-language-detector.svg?branch=master)](https://travis-ci.org/d-a-n/swift-language-detector) ![platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS%20-333333.svg) ![Swift version](https://img.shields.io/badge/%20Swift%20-3.1-blue.svg) [![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-✓-brightgreen.svg)](https://github.com/apple/swift-package-manager) ![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)



LanguageDetector tries to detect the language of a given text by comparing it against the top 1000 words of every language. This package works completely offline.

## Requirements
* Swift 3

## Instructions

### Use LanguageDetector in your project

Simply add a dependency in Swift Package Manager.

```swift
dependencies: [
    .Package(url: "https://github.com/d-a-n/swift-language-detector", majorVersion: 1),
]
```

Then add `import LanguageDetector ` to your source file.

#### Example

```
import LanguageDetector

let text1 = "The quick brown fox jumps over the lazy dog"
let text2 = "Zwölf Boxkämpfer jagen Eva quer über den großen Sylter Deich"
let text3 = "abc 123"

LanguageDetector.detect(text1) // -> "en"
LanguageDetector.detect(text2) // -> "de"
LanguageDetector.detect(text3) // -> nil

```

## License
MIT
