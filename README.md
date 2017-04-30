# TranslatorYandex

Gem created to handle text translation using Yandex API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'translator_yandex'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install translator_yandex

## Usage

First get your API key at  [Yandex](https://passport.yandex.com/registration?mode=register&from=tech&retpath=https%3A%2F%2Ftech.yandex.com%2Fkeys%2Fget%2F%3Fservice%3Dtrnsl&uid=497846848)

Then use your key to initialize the Yandex class
```
yandex = TranslatorYandex::Yandex.new YOUR_API_KEY
```

Now you are able to use the API methods like:
```
yandex.translate "Привет, мир!", "en" #"text"=>["Hello world!"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/translator_yandex.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
