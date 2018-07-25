# eosSwift

General purpose library for EOSIO blockchains.


### Usage

* Install with: `pod install`

To integrate eosSwift into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
pod 'eosSwift'
end
```

Then, run the following command:

```bash
$ pod install
```


### Example

```swift
let keys = Keypair(public: "EOS7T6u2oz32DsmMKU", private: "5KUvbu53Ad4wHLFpaS")

let manager = NetworkManager(url: "https://eos.massclarity.com" , keys: keys)

manager.fetchChainInfo() { info, error in
    if error = error {
        debugPrint(error)
    } else {
        debugPrint(info)
    }
}
```


