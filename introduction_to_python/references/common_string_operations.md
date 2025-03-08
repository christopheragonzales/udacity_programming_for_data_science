
# Common String Operations in Python

## String Methods

### `str.capitalize()`
- Returns a copy of the string with its first character capitalized and the rest lowercased.

### `str.center(width[, fillchar])`
- Returns a centered string of length `width`. Padding is done using the specified `fillchar` (default is a space).

### `str.count(sub[, start[, end]])`
- Returns the number of non-overlapping occurrences of substring `sub` in the range `[start, end]`.

### `str.find(sub[, start[, end]])`
- Returns the lowest index in the string where substring `sub` is found within the slice `[start:end]`. Returns `-1` if `sub` is not found.

### `str.join(iterable)`
- Concatenates the string with an iterable, with the string acting as a separator.

### `str.lower()`
- Returns a copy of the string with all characters converted to lowercase.

### `str.replace(old, new[, count])`
- Returns a copy of the string with all occurrences of substring `old` replaced by `new`. If `count` is given, only the first `count` occurrences are replaced.

### `str.split([sep[, maxsplit]])`
- Returns a list of the words in the string, using `sep` as the delimiter string. If `maxsplit` is given, at most `maxsplit` splits are done.

### `str.strip([chars])`
- Returns a copy of the string with leading and trailing characters removed. If `chars` is omitted, whitespace is removed.

## String Formatting

### `str.format(*args, **kwargs)`
- Performs a string formatting operation. The string on which this method is called can contain literal text or replacement fields delimited by braces `{}`.

### `str.format_map(mapping)`
- Similar to `str.format()`, but takes a single mapping object.

## String Constants

### `string.ascii_letters`
- The concatenation of the `ascii_lowercase` and `ascii_uppercase` constants.

### `string.digits`
- The string `0123456789`.

### `string.punctuation`
- String of ASCII characters which are considered punctuation characters.

### `string.whitespace`
- A string containing all ASCII characters that are considered whitespace.

For more detailed information, refer to the [Python 2 String Methods Documentation](https://docs.python.org/2/library/string.html).
