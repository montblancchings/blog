# Property Wrappers

> 정의 : A property wrapper adds a layer of separation between code that manages how a property is stored and the code that defines. a property.


* '프로퍼티가 어떻게 저장되는지 관리' 하는것과 '프로퍼티의 정의 사이'에 '분리계층'을 추가합니다.

- *~~무슨소리구?? 분리계층??~~ 정의만 봐서는 느낌상.. Computed Properties와 같은것 아닌가?*


> When you use a property wrapper, you write the management code once when you define the wrapper, and then reuse that management code by applying it to multiple properties.

* 프로퍼티 래퍼를 사용 할 때, 래퍼를 정의하면서 관리 코드를 한번 쓰고는 여러가지 프로퍼티들에 재사용 합니다.

- *get/set은 프로퍼티가 가지는 것인데.. 프로퍼티 래퍼는 프로퍼티에 부여한다? 다른것같은데? 아니 다르지.*


```swift
//https://docs.swift.org/swift-book/LanguageGuide/Properties.html

@propertyWrapper
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}
```

![test](./img/1.png)
