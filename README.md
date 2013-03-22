edumacator
==========

“Educates” quotes and replaces some other typographic characters like em-dashes (—) and ellipses (…).

It uses a simple algorithm to identify double quotes, single quotes, and apostrophes. Two dashes are replaced by an em-dash, and three dots, with a space or not, are replaced by an ellipsis.

```
Edumacator.educate %q{Jim's friend mumbled, "I guess..."}
```
converts to
```
Jim’s friend mumbled, “I guess…”
```

It assumes that the text passed in is plain text. Markup such as HTML will not survive being edumacated:
```
<img src="cat.gif">
```
would become
```
<img src=“cat.gif”>
```
which wouldn’t work so well.

It also assumes English quoting rules, because [nobody agrees](http://en.wikipedia.org/wiki/Non-English_usage_of_quotation_marks) how to do it. I’m also guessing that writers in languages that use quotes that aren’t like dumb-quotes will use the correct quotes. Submit an issue if I’m wrong!

See TODO.md for future plans.

Contributing to edumacator
--------------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright (c) 2013 Graham Davison. See LICENSE.txt for further details.

