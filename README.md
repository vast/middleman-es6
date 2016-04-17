# Middleman-ES6 [![Build Status](https://semaphoreci.com/api/v1/vast/middleman-es6/branches/master/shields_badge.svg)](https://semaphoreci.com/vast/middleman-es6)

Middleman _3_ extension adding support for ES6 (via babel-transpiler).

## Middleman 4

If you use Middleman 4, then there is no need in `middleman-es6` extension. To add ES6 support
to Middleman 4 add `middleman-sprockets`, `sprockets-es6` to Gemfile and configure it to handle
assets with `.es6` extension:

```ruby
# Gemfile

gem 'middleman-sprockets', '~> 4.0.0.rc'
gem 'sprockets-es6'
```

```ruby
# config.rb

require 'sprockets/es6'
activate :sprockets do |s|
  s.supported_output_extensions << '.es6'
end
```

If you need Babel's polyfill:

```javascript
// application.js.es6

//= require babel/polyfill
```

## Installation & Usage with Middleman 3

Add `middleman-es6` gem to your application's Gemfile:

```ruby
gem "middleman-es6", github: "vast/middleman-es6"
```

Activate it in `config.rb`:

```ruby
activate :es6
```

Use `.es6` as filename extension:

```javascript
// application.js.es6

let [first, , last] = [1, 2, 3];

class Person {
  constructor(name) {
    this.name = name;
  }

  get fullName() {
    return `Mr. ${this.name}`;
  }
}
```
