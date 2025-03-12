# Keymapp Menu Extra

Small Swift app that can interact with ZSA's [Keymapp](https://formulae.brew.sh/cask/keymapp) to display a MacOS menubar extra with the current layer name.

# Resources
- Reference implementation
    - [GitHub: zsa/kontroll](https://github.com/zsa/kontroll)
- Menu Bar App
    - ["YouTube: macOS Menu Bar App (Code Along) | SwiftUI, Xcode" by @FlowritesCode](https://www.youtube.com/watch?v=9QciOgymGso&t=0s&ab_channel=FlowritesCode)
- Swift + Protobuf
    - [GitHub: apple/swift-protobuf](https://github.com/apple/swift-protobuf)
- Swift + Rust
    - [Medium: "A Swiftly Oxidizing Tutorial" by @kennethyoel](https://medium.com/@kennethyoel/a-swiftly-oxidizing-tutorial-44b86e8d84f5)

# TODO's
- [ ] convert the script below into a build task
```sh
brew install protobuff protoc-gen-swift-grpc
cd ./kontroll-menu-bar-extra/proto/
wget https://raw.githubusercontent.com/zsa/kontroll/refs/heads/main/proto/keymapp.proto
protoc --plugin $(which protoc-gen-swift) --swift_out . keymapp.protoc
rm keymapp.proto
```
