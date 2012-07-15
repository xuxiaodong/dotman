#
# author   : Xu Xiaodong <xxdlhy@gmail.com>
# modified : 2012 Jul 15
#

require 'term/ansicolor'
require 'awesome_print'

include Term::ANSIColor

Pry.config.editor = "vim"
Pry.config.prompt = proc { |obj, nest_level, _| "#{magenta}#{RUBY_VERSION}) #{yellow}#{nest_level}.#{obj} #{green}> #{reset}" }
Pry.config.print  = proc { |output, value| Pry::Helpers::BaseHelpers.stagger_output("=> #{value.ai}", output) }
