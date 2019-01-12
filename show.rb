# Nothing to see here, honestly, just tricking GitHub into understanding
# this repo is Ruby-related.

require 'bundler/setup'
require 'pathname'
require 'tty/markdown'

TTY::Markdown.parse(Pathname.new('README.md').expand_path(__dir__).read).tap(&method(:puts))