# Kindle App Sample

This is a brand new app that I buiit myself. After I developed the app, I added a UI Smoke test ussing XCUITest. 

```
This app is a mock of Kindle app. It parses JSON file and get the books as well as cover immages from the JSON file.

```
A also provide accesibility identifiers to book cells and page cells so it can be used in my UI test. 


```
Also, I added accessibility hint for the page cell informing user that it is a page and they can swipe left to move to the next page. 

```

## Getting Started

```

You can clone the ripo and try to run the app. 

```
Feel free to take a look at the UI test too. 

```
### Prerequisites

You should have Xcode 10.2+, Swift 5. 

```

### Installing

Clone the ripo.

Open the project in your XCode

```
Run the app on a simulator or a real device

```
Feel free to run the UI test.
```

### Break down into end to end tests

In the smoke test I test 2 books that have pages and textx on them. 
I open each of them, swipe left and then closing the boo. 

```
The test verifies that user is able to opena book, go through pages and safely return to the main screen. 
```

### And coding style tests

I use Page Object Model for my UI tests. 

```

### WHat I learned. 

Building the app end to end. Using auto layout in stade of the frame. 
Implementation of accessibility API to make the app more testable and maintainable. 
