# Middleman-ES6

Middleman (Sprockets) extension adding support for ES6 (via babel-transpiler).

## Installation & Usage

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
