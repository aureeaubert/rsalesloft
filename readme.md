# RSalesloft

This is a ruby wrapper for the [Salesloft Api](https://developers.salesloft.com).

## Installation

Add this line to your application's Gemfile:

    gem 'rsalesloft'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rsalesloft

## Usage

```ruby
require 'rsalesloft'

RSalesloft.configure(api_key: "YOUR_API_KEY")

# List accounts example
accounts = RSalesloft::Resources::Accounts::list(page: 1, per_page: 100)

# Fetch an account example 
account = RSalesloft::Resources::Accounts::fetch("accound_id")
```

### Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/aureeaubert/rsalesloft/issues)
- Fix bugs and [submit pull requests](https://github.com/aureeaubert/rsalesloft/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features

## Copyright

Copyright (c) 2018 Auree Aubert. See LICENSE for details.
