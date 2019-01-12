Patreon

This repository (in fact, just README) contains and tracks my ([zverok aka Victor Shepelev](https://zverok.github.io)) contributions to discussing/changing of the Ruby programming language. It links to [Ruby bug tracker](https://bugs.ruby-lang.org/) discussions of things I've contributed and proposed and their current status. Rejected/ignored proposals are eventually removed from the list.

Goals of this list is:

* Public **tracking** of this part of my work (it is not easy in Redmine to summarize what are currently in progress and what is solved and how);
* **Encouragement** for others to participate in Ruby development: hopefully, my example (I am not a ruby-core member, or some rockstar, or personal acquitance of any of the maintainers) will show that it is possible and meaningful for **any** of us to make a difference;
* **Exposure** of my work on Ruby, however insignificant it is: with primary Ruby development being led in Redmine and SVN, it is pretty hard to point at "what exactly I did", and, well, I am mere mortal and sometimes just being proud.

## Ruby features

### Accepted

* **2.6**: [`Kernel#then`](https://bugs.ruby-lang.org/issues/14594) as a synonym (better name) for `#yield_self` ([context](https://zverok.github.io/blog/2018-03-23-yield_self2.html))
* **2.6**: [`Enumerable#chain`](https://bugs.ruby-lang.org/issues/15144)
* **2.6**: [`Range#===`](https://bugs.ruby-lang.org/issues/14575) to use `cover?` instead of `include?`
* **2.6**: [`CSV::Row#each_pair`](https://github.com/ruby/csv/pull/33) for compatibility with `OpenStruct`

### Pending
* [`Symbol#call`](https://bugs.ruby-lang.org/issues/15301) (current status: "Matz: Interesting idea of partial evaluation, but `call` is too generic, and could cause confusion. I am not positive about the expression.")
* [`Comparambe#clamp` with a range](https://bugs.ruby-lang.org/issues/14784) (current status: "akr: we have to consider many corner cases if accepting Range.  Request for feedback.")
* [`Enumerator#generate`](https://bugs.ruby-lang.org/issues/14781) (current status: core team loves the proposal, unsure about the name)
* [Startless range](https://bugs.ruby-lang.org/issues/14799) (current status: "Matz: try it")
* [`Method#inspect`](https://bugs.ruby-lang.org/issues/14145) (current status: Matz agreed, **I'll implement it**)
* [Default gems README](https://bugs.ruby-lang.org/issues/15486) (current status: active discussion)
* [Clarify default gems maintanance policy](https://bugs.ruby-lang.org/issues/15487) (current status: active discussion)
* [`Proc#<<` and `#>>` redesign](https://bugs.ruby-lang.org/issues/15428) (current status: conflict)
* [Redesign of timezone object requirements](https://bugs.ruby-lang.org/issues/15527) (current status: new ticket)

### Participated in discussions

(The cases where I was not an author of initial proposal, but believe my contribution/pushing for solution was significant enough)

* **2.5**: [`Kernel#yield_self`](https://bugs.ruby-lang.org/issues/6721) -- I don't like the name, but for several monthes pushed for "we should have this method, whatever name you choose" :)
* **2.7?**: [Syntax sugar for method reference](https://bugs.ruby-lang.org/issues/13581): seems `.:` is finally accepted for 2.7
* Pattern matching discussions: [latest ticket](https://bugs.ruby-lang.org/issues/14912), [mine latest proposal](https://bugs.ruby-lang.org/issues/14913), [one of discussions raised by me](https://bugs.ruby-lang.org/issues/14709)

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

### Pending

* [`TracePoint#enable`](https://bugs.ruby-lang.org/issues/15484)
* [JSON](https://github.com/flori/json/pull/349): hide irrelevant parts of docs
* [JSON: enhance generic `JSON` and `#generate` docs](https://github.com/flori/json/pull/347)
