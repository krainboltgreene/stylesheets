StyleSheets
-----------

StyleSheets is a gem for writing ruby and generating CSS.


Using StyleSheets
=================

This ruby:

```
require 'stylesheets/main'

fonts = ["Helvetica", "Times New Roman", "sans-serif"]

rule "article body" {
  text {
    family fonts
    size 14
    weight :bold
    style :italic
    shadow color: :grey, horizontal: 3, vertical: 2, cross: true
  }
}
```

Will return this CSS as a string:

``` css
article p {
  font-family: sans-serif;
  font-size: 14px;
  font-weight: bold;
  font-style: italic;
  -webkit-text-shadow: 2px 2px grey;
  -moz-text-shadow: 2px 2xp grey;
  -o-text-shadow: 2px 2px grey;
  text-shadow: 3px 2px grey;
}
```

You can compress the CSS with the `:compress` flag:

``` ruby
require 'stylesheets/compress'

rule :body, style: :compressed do
  border color: rgb(255,0,0), size: 4, type: solid
  margin 3
  margin.bottom 4.em
end
```

``` css
body{border:4px solid rgb(255,0,0);margin:3px;margin-bottom:4em;}
```

You can also nest styles:

``` ruby
rule "article" do
  rule "header" do
    text color: "blue"
  end

  rule "p" do
    text color: "red"
  end
end
```

``` css
article header {
  color: blue;
}

article p {
  color: red;
}
```

And much more.


Installing StyleSheets
======================

Add this line to your application's Gemfile:

    gem 'stylesheets'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stylesheets


Contributing
============

  1. Fork it
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Push to the branch (`git push origin my-new-feature`)
  5. Create new Pull Request


License
=======

    Copyright (c) 2013 Kurtis Rainbolt-Greene

    MIT License

    Permission is hereby granted, free of charge, to any person obtaining
    a copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:

    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
    OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
