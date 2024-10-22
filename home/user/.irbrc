# frozen_string_literal: true

require 'awesome_print'
require 'irb/completion'

IRB.conf[:SAVE_HISTORY] = 10_000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.cache/irb_history"
IRB.conf[:AUTO_INDENT] = true

AwesomePrint.irb!
