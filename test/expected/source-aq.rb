:c
:t[:c]
Sequel[:c].as(:a)
:t[:c].as(:a)
:"c"
:"t"[:"c"]
Sequel[:"c"].as(:"a")
:"t"[:"c"].as(:"a")
{c: 1, :t[:c] => 2, Sequel[:c].as(:a) => 3, :t[:c].as(:a) => 4}
