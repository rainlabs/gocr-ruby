# gocr-ruby is a gocr binding for ruby

Ruby GOCR binding for lib http://jocr.sourceforge.net/

Currently it is in progress, unstable version.

## Installation

Add this line to your application's Gemfile:

    gem 'gocr-ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gocr-ruby

## Usage

current api almost as a ruby-tesseract-ocr

```ruby
require 'gocr'
e = GOCR::Engine.new(whitelist: '0-9').text_for('image.png')
```

### Available options

* `:whitelist` - char filter (ex. hexdigits: ""0-9A-Fx"", only ASCII)
* `:database` - database path including final slash (default is ./db/)
* `:format` - output format (ISO8859_1 TeX HTML XML UTF8 ASCII)
* `:gray_level` - threshold grey level 0<160<=255 (0 = autodetect)
* `:numbers_only` - numbers only
* `:mode` operation modes (bitpattern, see official gocr manual)
* `:certainty` - value of certainty (in percent, 0..100, default=95)
* `:unrecognize_char` - output this string for every unrecognized character
* `:dust_size` - dust_size (remove small clusters, -1 = autodetect)
* `:space_width` - spacewidth/dots (0 = autodetect)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
