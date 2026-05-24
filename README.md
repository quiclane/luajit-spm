# LuaJIT SPM

Swift Package Manager distribution of LuaJIT 2.1 as an XCFramework. Provides the full LuaJIT library without `int main`, suitable for embedding in iOS and macOS applications.

## Installation

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/quiclane/luajit-spm.git", exact: "2.1.0")
]
```

## Usage

```swift
import LuaJIT

let L = luaL_newstate()
luaL_openlibs(L)

// Execute LuaJIT code
luaL_dostring(L, "print('Hello from LuaJIT!')")

lua_close(L)
```

## What's Included

- Full LuaJIT 2.1 library compiled as XCFramework (ARM64 only)
- Static libraries for iOS, iOS Simulator, and macOS
- No `int main` - suitable for embedding
- Built from https://github.com/LuaJIT/LuaJIT.git

## Platforms

- iOS 13.0+ (ARM64)
- iOS Simulator 13.0+ (ARM64)
- macOS 10.15+ (ARM64)

## Files

- `luajit.xcframework/` - XCFramework for all platforms
- `luajit.xcframework.zip` - Zipped XCFramework
- Static libs in xcframework

## License

LuaJIT is licensed under the MIT License.
