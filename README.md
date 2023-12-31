# Ruby REST Agent

Encapsulates best practices associated with having a REST Agent, and patterns developed processing info from places. The agent's scope includes the following domains:
* Fetcher - The code that fetches different kinds of data from the internet, for whatever purposes are needed
* Parser - Code to parse the results in order to prepare them to be added to a database

In addition to those technical domains, the agent will have a pluggable provider architecture that allows
easily configuring additional sources of information.

## Installation

To install the gem, add the following line to the application's Gemfile:

    gem 'ruby_rest_agent', git: 'https://github.com/mnyon-grandkru/ruby_rest_agent'

## Usage



## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ruby_rest_agent.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
