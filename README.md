[![wercker status](https://app.wercker.com/status/71ca0846f5e839b6841e1f44cf3cfb15/m/master "wercker status")](https://app.wercker.com/project/byKey/71ca0846f5e839b6841e1f44cf3cfb15)

# UnionFindTree

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/union_find_tree`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'union_find_tree'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install union_find_tree

## Usage
This tree's data size is dynamic variable.  
If you want to use this library to programming contests, you can copy and paste from lib/union_find_tree.rb

example1
```ruby
require 'union_find_tree'
include UnionFindTree

tree =  UnionFind.new
tree.unite(1,2)
tree.same?(1,2) #=> true
tree.same?(2,3) #=> false
tree.size(1) #=> 2
tree.size(3) #=> 1

```

you can add any object.

example2
```ruby
require 'union_find_tree'
include UnionFindTree

tree =  UnionFind.new
o1 = Array.new(1)
o2 = Array.new(2)
o3 = Array.new(3)
tree.unite(o1,o2)
tree.same?(o1,o2) #=> true
tree.same?(o1,o3) #=> false
tree.size(o1) #=> 2
tree.size(o3) #=> 1

```

 
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/union_find_tree. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
