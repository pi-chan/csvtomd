# CsvToMd

Convert CSV text to markdown style table.

## Installation

Add this line to your application's Gemfile:

    gem 'csvtomd'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install csvtomd

## Usage

### Basic

```ruby
require "csvtomd"

csv = <<CSV
head1, head2, head3, head4
line1-1, line1-2, line1-3, line1-4
line2-1, line2-2, line2-3, line2-4
line3-1, line3-2, line3-3, line3-4
CSV

puts CsvToMd.convert(csv)
```

Then, got markdown style table.

```md
|head1|head2|head3|head4|
|---|---|---|---|
|line1-1|line1-2|line1-3|line1-4|
|line2-1|line2-2|line2-3|line2-4|
|line3-1|line3-2|line3-3|line3-4|
```

|head1|head2|head3|head4|
|---|---|---|---|
|line1-1|line1-2|line1-3|line1-4|
|line2-1|line2-2|line2-3|line2-4|
|line3-1|line3-2|line3-3|line3-4|

### Advanced

`CsvToMd` allows empty cells in CSV text.

```ruby
require "csvtomd"

csv = <<CSV
, , , head,
, ,
,
CSV

puts CsvToMd.convert(csv)
```

results,

```md
||||head||
|---|---|---|---|---|
||||||
||||||
```

||||head||
|---|---|---|---|---|
||||||
||||||

## Contributing

1. Fork it ( https://github.com/[my-github-username]/csvtomd/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
