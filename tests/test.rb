# frozen_string_literal: true

version = "1.2.3+5"
line = 'This is a line with version "1.0.0+0" in it.'

new_line = if version
  line.gsub(/"\d+(?:\.\d+)+(\+\d+)?"/, "\"#{version}\"")
else
  "Error: version is not defined"
end

puts "new_line: #{new_line}"
