# Milligram

[![Gem Version](https://badge.fury.io/rb/milligram.svg)](https://badge.fury.io/rb/milligram)

[Milligram](https://milligram.github.io/) is a minimalist CSS framework. This gem packages the framework's assets for drop-in use in Rails applications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'milligram'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install milligram

## Usage

Once installed, add the following to your `application.scss`:

```scss
@import "milligram";
```

Or, import components as needed:

```scss
@import "milligram/color";
@import "milligram/base";
@import "milligram/button";
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
