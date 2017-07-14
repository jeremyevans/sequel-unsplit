:c
:t[:c]
Sequel.as(:c, :a)
:t[:c].as(:a)
:"c"
:"t"[:"c"]
Sequel.as(:"c", :"a")
:"t"[:"c"].as(:"a")
{c: 1, :t[:c] => 2, Sequel.as(:c, :a) => 3, :t[:c].as(:a) => 4}
