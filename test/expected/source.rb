:c
Sequel[:t][:c]
Sequel[:c].as(:a)
Sequel[:t][:c].as(:a)
:"c"
Sequel[:"t"][:"c"]
Sequel[:"c"].as(:"a")
Sequel[:"t"][:"c"].as(:"a")
{c: 1, Sequel[:t][:c] => 2, Sequel[:c].as(:a) => 3, Sequel[:t][:c].as(:a) => 4}
