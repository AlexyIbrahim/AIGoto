# AIGoto

A Swift replacement for C goto statement



## Usage

```swift
goto.set("first goto") {
	print("first goto fired")
	|->"second goto"
}
        
goto.set("second goto") {
	print("second goto fired")
}
        
|->"first goto"
```

