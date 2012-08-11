#
# author   : Xu Xiaodong <xxdlhy@gmail.com>
# modified : 2012 Jul 22
#

require 'term/ansicolor'

include Term::ANSIColor

Pry.config.editor = "vim"
Pry.config.prompt = proc { |obj, nest_level, _| "#{magenta}#{RUBY_VERSION}) #{yellow}#{nest_level}.#{obj} #{green}> #{reset}" }
