# LanguageDetector

LanguageDetector tries to detect the language of a given text by comparing it against the top 1000 words of every language.

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