# FBDateFormat

<p align="center">
    <img src="https://img.shields.io/badge/Swift-5-orange.svg" />
    <img src="https://img.shields.io/badge/version-1.0.1-blue.svg" />
    <img src="https://img.shields.io/cocoapods/l/MyCocoapodsLibrary.svg" />
    <img src="https://img.shields.io/cocoapods/p/MyCocoapodsLibrary.svg" />
</p>


<p align="center">
  <img src="https://i.imgur.com/mXOkrrZ.gif" alt="fbdateformat">
</a>

Welcome to FBDateFormat, an algorithmic library. I've built this library to help developers use Facebook date format in thier application with hassle-free conversion.

## Installation

### Using the Swift Package Manager

FBDateFormat is distributed using the [Swift Package Manager](https://swift.org/package-manager). To install it into a project, go to file -> Swift Packages -> add it as a package dependency, then enter a package repository url which is `https://github.com/ahmedelserafy7/FBDateFormat.git`, click next and one more next, and finish.

Then import FBDateFormat wherever you’d like to use it:

```swift
import FBDateFormat
```

### CocoaPods

You can use [CocoaPods](https://cocoapods.org) by adding the following line to your `Podfile`:

```ruby
pod 'FBDateFormat'
```

## How it works

- Test Just now:

```swift
let currentDate = Date()
print(currentDate.displayFBDateFormat())
```

- Test minutes:

```swift
let minsAgo: Double = -60

let timeAgo = Date(timeIntervalSinceNow: minsAgo)
//let timeAgo = Date(timeIntervalSinceNow: 2 * minsAgo)
print(timeAgo.displayFBDateFormat())
```

- Test hours:

```swift
let hrAgo: Double = 60 * minsAgo

let timeAgo = Date(timeIntervalSinceNow: hrAgo)
//let timeAgo = Date(timeIntervalSinceNow: 2 * hrAgo)
print(timeAgo.displayFBDateFormat())
```

- Test yesterday

```swift
let dayAgo: Double = 24 * hrAgo
let timeAgo = Date(timeIntervalSinceNow: dayAgo)
print(timeAgo.displayFBDateFormat())
```

- Let's say today is "30/8 at 3:50 AM". How could I still be at yesterday?

```swift
let timeAgo = Date(timeIntervalSinceNow: dayAgo + 3 * hrAgo)
print(timeAgo.displayFBDateFormat())
```

- It still doesn't exceed the day before yesterday till now:

```swift
let timeAgo = Date(timeIntervalSinceNow: dayAgo + 3 * hrAgo + 50 * minsAgo)
print(timeAgo.displayFBDateFormat())
 ```       

- It exceeded yesterday:

```swift
let timeAgo = Date(timeIntervalSinceNow: dayAgo + 3 * hrAgo + minsAgo * 51)
print(timeAgo.displayFBDateFormat())
```

- Test days:

```swift
let timeAgo = Date(timeIntervalSinceNow: 2 * dayAgo)
print(timeAgo.displayFBDateFormat())
```

- Test weeks:

```swift
let weekAgo = 7 * dayAgo

let timeAgo = Date(timeIntervalSinceNow: weekAgo)
print(timeAgo.displayFBDateFormat())
```
        
- Test months:

```swift
let monthAgo = 4 * weekAgo

let timeAgo = Date(timeIntervalSinceNow: monthAgo)
print(timeAgo.displayFBDateFormat())
```
- Test years:

```swift
let yearAgo = 12 * monthAgo

let timeAgo = Date(timeIntervalSinceNow: yearAgo)
//let timeAgo = Date(timeIntervalSinceNow: 5 * yearAgo)
print(timeAgo.displayFBDateFormat())
```

## Usage

1. First thing first, all you have to do is to import it:

```swift
import FBDateFormat
```
2. Use `displayFBDateFormat` function with your `Date` data types like `postDate.displayFBDateFormat()` or `commentDate.displayFBDateFormat()`.

### Note:
You can check/try all test cases which can be found in [`/FBDateFormatExample`](https://github.com/ahmedelserafy7/FBDateFormat/tree/master/FBDateFormatExample/FBDateFormatExample).

---

## Contributions and support

Having trouble working with FBDateFormat? Found a typo in the implementation? Interested in adding a feature or [fixing a bug](https://github.com/ahmedelserafy7/FBDateFormat/issues)? Then by all means [submit an issue](https://github.com/ahmedelserafy7/FBDateFormat/issues/new) or [pull request](https://help.github.com/articles/using-pull-requests/). If this is your first pull request, it may be helpful to read up on the [GitHub Flow](https://guides.github.com/introduction/flow/) first.

**Please keep this in mind when requesting features and/or submitting pull requests:**
- FBDateFormat is developed completely in the open, and your contributions are more than welcome.
- FBDateFormat has been designed as a base for you to customize and fit your `Date` data types easily. 
- It’s highly recommended that you spend a few minutes familiarizing yourself with its internal implementation, so that you’ll be ready to tackle any issues or edge cases that you might encounter.

### Pull Requests

When submitting a pull request:

1. Clone the repo.
2. Create a branch off of `master` and give it a meaningful name (e.g. `my-awesome-new-feature`).
3. Open a pull request on GitHub and describe the feature or fix.

---

## Credits

### Creator
**Ahmed Elserafy**
- <ahmedelserafy17@gmail.com>
