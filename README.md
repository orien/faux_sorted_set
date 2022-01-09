# FauxSortedSet

[![GitHub](https://img.shields.io/github/license/orien/faux_sorted_set)](https://github.com/orien/faux_sorted_set/blob/main/LICENSE.txt)
[![Gem Version](https://img.shields.io/gem/v/faux_sorted_set.svg)](https://rubygems.org/gems/faux_sorted_set)
[![Gem Downloads](https://img.shields.io/gem/dt/faux_sorted_set.svg)](https://rubygems.org/gems/faux_sorted_set)
[![Build Status](https://github.com/orien/faux_sorted_set/workflows/tests/badge.svg?branch=main)](https://github.com/orien/faux_sorted_set/actions?query=branch%3Amain+workflow%3Atests)

As of Ruby version 3.0, `SortedSet` is not included in the standard library, as it was in previous releases. Instead, Ruby raises an informative error when this class is referenced:

> The `SortedSet` class has been extracted from the `set` library. You must use the `sorted_set` gem or other alternatives.

```
❯ irb
irb(main):001:0> SortedSet
/ruby/3.1.0/lib/ruby/3.1.0/set/sorted_set.rb:4:in `rescue in <top (required)>': The `SortedSet` class has been extracted from the `set` library. You must use the `sorted_set` gem or other alternatives. (RuntimeError)
	from /ruby/3.1.0/lib/ruby/3.1.0/set/sorted_set.rb:1:in `<top (required)>'
	from <internal:/ruby/3.1.0/lib/ruby/site_ruby/3.1.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
	from <internal:/ruby/3.1.0/lib/ruby/site_ruby/3.1.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
```

This error is helpful for engineers as they migrate programs to run on Ruby 3. However, it causes problems for Ruby programs that use meta-programming to walk the object graph. When such a program visits the `SortedSet` constant, the informative error causes the program to fail. 

This `faux_sorted_set` library provides a solution: a minimal `SortedSet` implementation that prevents Ruby from raising the informative error. To save resources, the library has a minimal size and no dependencies.

**Warning**: the provided `SortedSet` does not sort its contents. Do not use this library if you want to use a `SortedSet`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faux_sorted_set', require: false
```

And then execute:

```shell
bundle install
```

Or install it yourself as:

```shell
gem install faux_sorted_set
```

## Usage

The `SortedSet` class provided by this gem doesn't do any sorting and instead behaves just like a standard `Set`. Please don't use it. It'll only lead to confusion. If you want a legitimate `SortedSet` implementation, please evaluate [knu/sorted_set](https://github.com/knu/sorted_set).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/orien/faux_sorted_set.

## License

The gem is available as open-source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
