# Rvine

A simple Ruby wrapper for the unofficial [Vine](https://vine.co/) API.   

[Vine](https://vine.co/) is a mobile service that lets you create, share short videos and sure enoght is a cool app, but has a small problem - sometimes I just want to share the video link with my friends without sharing it on twitter.  
Yes!! Use Rvine.

## Installation

Add this line to your application's Gemfile:

    gem 'rvine'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rvine

## Usage

### Get popular timeline
```ruby
Rvine.popular_timeline
```

### Get tag's items
```ruby
Rvine.tags 'ruby'
```

### Get a specified user's profile
```ruby
user_id = '1234567890abcdefg'
Rvine.profile user_id
```


## Authenticated requests

### Login with "mail & password" or "key"
```
rvine = Rvine.new mail: 'kyuden@example.com', password: 'mysecret'
# or
rvine = Rvine.new key: 'authtoken'
```

### Get my data
```ruby
rvine.me
```

## more
Rvine is more multifunction.   
Read [code](https://github.com/VineAPI/VineAPI/blob/master/endpoints.md).

## ToDo
All support [this](https://github.com/VineAPI/VineAPI/blob/master/endpoints.md)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rvine/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
