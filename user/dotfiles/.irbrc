require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.cache/irb_history"
require "awesome_print"
AwesomePrint.irb!
