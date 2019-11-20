# Contributing to Ruby

[![Patreon](https://img.shields.io/badge/patreon-donate-blue.svg)](https://www.patreon.com/zverok)

This repository (in fact, just README) contains and tracks my ([zverok aka Victor Shepelev](https://zverok.github.io)) contributions to discussing/changing of the Ruby programming language. It links to [Ruby bug tracker](https://bugs.ruby-lang.org/) discussions of things I've contributed and proposed and their current status. Rejected/ignored proposals are eventually removed from the list.

Goals of this list is:

* Public **tracking** of this part of my work (it is not easy in Redmine to summarize what are currently in progress and what is solved and how);
* **Encouragement** for others to participate in Ruby development: hopefully, my example will show that it is possible and meaningful for **any** of us to make a difference;
* **Exposure** of my work on Ruby, however insignificant it is: with primary Ruby development being led in Redmine and SVN, it is pretty hard to point at "what exactly I did", and, well, I am mere mortal and sometimes just being proud.

## Ruby features

### Accepted

* **2.6**: [`Kernel#then`](https://bugs.ruby-lang.org/issues/14594) as a synonym (better name) for `#yield_self` ([context](https://zverok.github.io/blog/2018-03-23-yield_self2.html))
* **2.6**: [`Enumerable#chain`](https://bugs.ruby-lang.org/issues/15144)
* **2.6**: [`Range#===`](https://bugs.ruby-lang.org/issues/14575) to use `cover?` instead of `include?`
* **2.6**: [`CSV::Row#each_pair`](https://github.com/ruby/csv/pull/33) for compatibility with `OpenStruct`
* **2.7**: [`Comparambe#clamp` with a range](https://bugs.ruby-lang.org/issues/14784): `1.clamp(0..100)`, `1.clamp(5..)`, `1.clamp(..18)`
* **2.7**: [`Enumerator#produce`](https://bugs.ruby-lang.org/issues/14781)
* **2.7**: [Startless range](https://bugs.ruby-lang.org/issues/14799)
* ~**2.7**: [`Date#inspect` simplified](https://github.com/ruby/date/pull/12)~ (reverted)
* **2.7**: [`Method#inspect`](https://bugs.ruby-lang.org/issues/14145)


### Pending

* [Default gems README](https://bugs.ruby-lang.org/issues/15486)
* [Clarify default gems maintanance policy](https://bugs.ruby-lang.org/issues/15487)
* [Redesign of timezone object requirements](https://bugs.ruby-lang.org/issues/15527)
* [`Struct::Value` immutable value object](https://bugs.ruby-lang.org/issues/16122)
* [Callable istance method instead of `Symbol#to_proc`](https://bugs.ruby-lang.org/issues/16122)
* [`Enumerable#each_splat`](https://bugs.ruby-lang.org/issues/16261)
* [`Symbol#to_proc` lambdiness](https://bugs.ruby-lang.org/issues/16260)
* [`Dir#empty?` and `File#empty?`](https://bugs.ruby-lang.org/issues/16249)

### Contributed to discussions

(The cases where I was not an author of initial proposal, but believe my contribution/pushing for solution was significant enough)

* **2.5**: [`Kernel#yield_self`](https://bugs.ruby-lang.org/issues/6721) -- I don't like the name, but for several months pushed for "we should have this method, whatever name you choose" :)
* ~**2.7**: [Syntax sugar for method reference](https://bugs.ruby-lang.org/issues/13581): seems `.:` is finally accepted for 2.7~ (ugh, [reverted](https://bugs.ruby-lang.org/issues/16275))

## Minor clarifications and bugs

* **2.7** [Deprecate](https://bugs.ruby-lang.org/issues/15893) `Kernel#open` provided by `open-uri` in favor of more explicit `URI.open`
* **2.7** [`Time#dst?` bug for time with real timezone](https://bugs.ruby-lang.org/issues/15988)
* **2.7?** [`Object.clone(freeze: true)`](https://bugs.ruby-lang.org/issues/16175)

## Documenting Ruby

### Merged

* **2.6**: [`&.`](https://bugs.ruby-lang.org/issues/15109)
* **2.6**: [`Kernel#yield_self`](https://bugs.ruby-lang.org/issues/1443)
* **2.6**: [`Method`](https://bugs.ruby-lang.org/issues/14483)
* **2.6**: [`YAML`](https://bugs.ruby-lang.org/issues/14567) (explanation of aliasing to `Psych`)
* **2.6**: [`MatchData`](https://bugs.ruby-lang.org/issues/14450)
* **2.6**: [`Proc`](https://bugs.ruby-lang.org/issues/14610)
* **2.6**: [`Endless range`](https://bugs.ruby-lang.org/issues/15405)
* **2.6**: [`Integer(exception: false)` and others](https://bugs.ruby-lang.org/issues/15452)
* **2.6**: [`Tempfile`](https://bugs.ruby-lang.org/issues/15411)
* **2.6**: [`Psych#dump`](https://github.com/ruby/psych/pull/351)
* **2.6**: [`CSV`: redesign main class docs](https://github.com/ruby/csv/pull/32)
* **trunk**: [`Kernel#system(exception: true)`](https://bugs.ruby-lang.org/issues/15480)
* **trunk**: [`NoMethodError`/`NameError` new arguments](https://bugs.ruby-lang.org/issues/15481)
* **trunk**: [`RubyVM.resolve_feature_path`](https://bugs.ruby-lang.org/issues/15482)
* **trunk**: [`Kernel#BigDecimal(exception: false)`](https://github.com/ruby/bigdecimal/pull/117)
* **trunk**: [`BigDecimal::Jacobian` -- fix invisible docs](https://github.com/ruby/bigdecimal/pull/130)
* **trunk**: [`TracePoint#enable`](https://bugs.ruby-lang.org/issues/15484)
* **trunk**: [`Enumerator::Lazy`](https://bugs.ruby-lang.org/issues/15529)
* **trunk**: [fileutils](https://github.com/ruby/fileutils/pull/33): facelift module docs and fix some bugs;
* **trunk**: [group of small fixes of formatting in core docs](https://bugs.ruby-lang.org/issues/16126)
* **trunk**: [group of larger fixes](https://github.com/ruby/ruby/pull/2612): toplevel `return`, full comments syntax explanation, `rescue` in blocks, better docs for `chomp:` option, `Object#to_enum`, `Proc#>>` and `#<<`, `Process` module
* **trunk**: [Matrix: slightly enhance docs](https://github.com/ruby/matrix/pull/11)
* **trunk**: [group of stdlib documentation fixes](https://github.com/ruby/ruby/pull/2615): ERB, StringIO, IRB, Net::FTP, open-uri, OptionParser, Net::HTTP
* **trunk**: [`Bundler` entire stdlib](https://github.com/bundler/bundler/pull/7394)

### Pending

* [JSON](https://github.com/flori/json/pull/349): hide irrelevant parts of docs
* [JSON: enhance generic `JSON` and `#generate` docs](https://github.com/flori/json/pull/347)
* [Webrick: document Proc body for Response](https://github.com/ruby/webrick/pull/35)