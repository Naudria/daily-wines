# Daily::Wines

This CLI gem lists today's "Daily Wine Picks" from winespectator.com. If the user selects one of the three picks by its number, the program will provide more information on the wine, including its price, point rank, and a short description. The program then prompts the user to select another daily pick or exit.  

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'daily-wines'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install daily-wines

## Usage

After installation, type the command 'daily-wines' in the command line. You will be presented with a numbered list of the 3 wine picks for the day. From this menu, you can:

Type a wine's number to access information about the wine such as price, points, and description
Type 'list' to see the picks
Type 'exit' to exit the program


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'Naudria'/daily-wines. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Daily::Wines project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'Naudria'/daily-wines/blob/master/CODE_OF_CONDUCT.md).
