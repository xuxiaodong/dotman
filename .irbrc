#
# author:    Xu Xiaodong <xxdlhy@gmail.com>
# modified:  2011 May 06
#

begin
  require 'wirble'

  Wirble.init
  Wirble.colorize
rescue LoadError => err
  puts "#{err}"
end
