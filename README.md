# WardenAxe

How to delete all user sessions, stored in redis_store, created by warden?

## Installation

Add this line to your application's Gemfile:

    gem 'warden_axe'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install warden_axe

## Usage

WardenAxe.chopoff_sessions!('default', user.id)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
