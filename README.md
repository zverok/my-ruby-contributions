# Contributing to Ruby

[![Patreon](https://img.shields.io/badge/patreon-donate-blue.svg)](https://www.patreon.com/zverok)

This repository (in fact, just README) contains and tracks my ([zverok aka Victor Shepelev](https://zverok.github.io)) contributions to discussing/changing of the Ruby programming language. It links to [Ruby bug tracker](https://bugs.ruby-lang.org/) discussions of things I've contributed and proposed and their current status. Rejected/ignored proposals are eventually removed from the list.

Goals of this list is:

* Public **tracking** of this part of my work (it is not easy in Redmine to summarize what are currently in progress and what is solved and how);
* **Encouragement** for others to participate in Ruby development: hopefully, my example will show that it is possible and meaningful for **any** of us to make a difference;
* **Exposure** of my work on Ruby, however insignificant it is: with primary Ruby development being led in Redmine and SVN, it is pretty hard to point at "what exactly I did", and, well, I am mere mortal and sometimes just being proud.

## Ruby features

### Accepted

* **Ruby 2.6**:
  * [`Kernel#then`](https://bugs.ruby-lang.org/issues/14594) as a synonym (better name) for `#yield_self` ([context](https://zverok.github.io/blog/2018-03-23-yield_self2.html))
  * [`Enumerable#chain`](https://bugs.ruby-lang.org/issues/15144)
  * [`Range#===`](https://bugs.ruby-lang.org/issues/14575) to use `cover?` instead of `include?`
  * [`CSV::Row#each_pair`](https://github.com/ruby/csv/pull/33) for compatibility with `OpenStruct`
* **Ruby 2.7**:
  * [`Comparambe#clamp` with a range](https://bugs.ruby-lang.org/issues/14784): `1.clamp(0..100)`, `1.clamp(5..)`, `1.clamp(..18)`
  * [`Enumerator#produce`](https://bugs.ruby-lang.org/issues/14781)
  * [Beginless range](https://bugs.ruby-lang.org/issues/14799)
  * [`Method#inspect`](https://bugs.ruby-lang.org/issues/14145)
  * ~[`Date#inspect` simplified](https://github.com/ruby/date/pull/12)~ (reverted)

### Pending

* [Default gems README](https://bugs.ruby-lang.org/issues/15486)
* [Clarify default gems maintanance policy](https://bugs.ruby-lang.org/issues/15487)
* [Redesign of timezone object requirements](https://bugs.ruby-lang.org/issues/15527)
* [`Struct::Value` immutable value object](https://bugs.ruby-lang.org/issues/16122)
* [Callable istance method instead of `Symbol#to_proc`](https://bugs.ruby-lang.org/issues/16122)
* [`Enumerable#each_splat`](https://bugs.ruby-lang.org/issues/16261)
* [`Symbol#to_proc` lambdiness](https://bugs.ruby-lang.org/issues/16260)
* [`Dir#empty?` and `File#empty?`](https://bugs.ruby-lang.org/issues/16249)
* [`Array#to_proc`](https://bugs.ruby-lang.org/issues/16435)
* [`Enumerable#take_while_after`](https://bugs.ruby-lang.org/issues/16441)
* [Pattern matching deconstruction for various core objects](https://bugs.ruby-lang.org/issues/16464)

### Contributed to discussions

(The cases where I was not an author of initial proposal, but believe my contribution/pushing for solution was significant enough)

* **2.5**: [`Kernel#yield_self`](https://bugs.ruby-lang.org/issues/6721) -- I don't like the name, but for several months pushed for "we should have this method, whatever name you choose" :)
* ~**2.7**: [Syntax sugar for method reference](https://bugs.ruby-lang.org/issues/13581): seems `.:` is finally accepted for 2.7~ (ugh, [reverted](https://bugs.ruby-lang.org/issues/16275))

## Minor clarifications and bugs

* **2.7** [Deprecate](https://bugs.ruby-lang.org/issues/15893) `Kernel#open` provided by `open-uri` in favor of more explicit `URI.open`
* **2.7** [`Time#dst?` bug for time with real timezone](https://bugs.ruby-lang.org/issues/15988)
* **2.7** [`IO#set_encoding_by_bom` raising on already set encoding](https://bugs.ruby-lang.org/issues/16422)
* **???** [`Object.clone(freeze: true)`](https://bugs.ruby-lang.org/issues/16175)

## Documenting Ruby

### Merged

* **Ruby 2.6**:
  * [`&.`](https://bugs.ruby-lang.org/issues/15109)
  * [`Kernel#yield_self`](https://bugs.ruby-lang.org/issues/1443)
  * [`Method`](https://bugs.ruby-lang.org/issues/14483)
  * [`YAML`](https://bugs.ruby-lang.org/issues/14567) (explanation of aliasing to `Psych`)
  * [`MatchData`](https://bugs.ruby-lang.org/issues/14450)
  * [`Proc`](https://bugs.ruby-lang.org/issues/14610)
  * [`Endless range`](https://bugs.ruby-lang.org/issues/15405)
  * [`Integer(exception: false)` and others](https://bugs.ruby-lang.org/issues/15452)
  * [`Tempfile`](https://bugs.ruby-lang.org/issues/15411)
  * [`Psych#dump`](https://github.com/ruby/psych/pull/351)
  * [`CSV`: redesign main class docs](https://github.com/ruby/csv/pull/32)
* **Ruby 2.7**:
  * [`Kernel#system(exception: true)`](https://bugs.ruby-lang.org/issues/15480)
  * [`NoMethodError`/`NameError` new arguments](https://bugs.ruby-lang.org/issues/15481)
  * [`Kernel#BigDecimal(exception: false)`](https://github.com/ruby/bigdecimal/pull/117)
  * [`BigDecimal::Jacobian` -- fix invisible docs](https://github.com/ruby/bigdecimal/pull/130)
  * [`TracePoint#enable`](https://bugs.ruby-lang.org/issues/15484)
  * [`Enumerator::Lazy`](https://bugs.ruby-lang.org/issues/15529)
  * [fileutils](https://github.com/ruby/fileutils/pull/33): facelift module docs and fix some bugs;
  * [group of small fixes of formatting in core docs](https://bugs.ruby-lang.org/issues/16126)
  * [group of larger fixes](https://github.com/ruby/ruby/pull/2612): toplevel `return`, full comments syntax explanation, `rescue` in blocks, better docs for `chomp:` option, `Object#to_enum`, `Proc#>>` and `#<<`, `Process` module
  * [Matrix: slightly enhance docs](https://github.com/ruby/matrix/pull/11)
  * [group of stdlib documentation fixes](https://github.com/ruby/ruby/pull/2615): ERB, StringIO, IRB, Net::FTP, open-uri, OptionParser, Net::HTTP
  * [`Bundler` entire stdlib](https://github.com/bundler/bundler/pull/7394)
  * [Webrick: document Proc body for Response](https://github.com/ruby/webrick/pull/35)
  * [Numbered block parameters](https://github.com/ruby/ruby/pull/2767)
  * [Small final pre-2.7 changes](https://github.com/ruby/ruby/pull/2768)
  * [`Module#const_source_location`](https://github.com/ruby/ruby/pull/2750)
  * ~[`RubyVM.resolve_feature_path`](https://bugs.ruby-lang.org/issues/15482)~ (the feature is moved to `$LOAD_PATH`)

### Pending

* [Pattern matching](https://github.com/ruby/ruby/pull/2786)
* [JSON](https://github.com/flori/json/pull/349): hide irrelevant parts of docs
* [JSON: enhance generic `JSON` and `#generate` docs](https://github.com/flori/json/pull/347)
