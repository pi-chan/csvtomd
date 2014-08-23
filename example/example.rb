require "rubygems"

$:.unshift File.expand_path("../lib", File.dirname(__FILE__))
require "csvtomd"

text = <<CSV
head1, head2, head3, head4
hoge, fuga, , foo,
bar, piyo, baz, aaa
bbb, , , ,bbb
CSV

puts CsvToMd.convert(text)
