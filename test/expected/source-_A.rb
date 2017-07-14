:c
Sequel[:t][:c]
Sequel.as(:c, :a)
Sequel[:t][:c].as(:a)
:"c"
Sequel[:"t"][:"c"]
Sequel.as(:"c", :"a")
Sequel[:"t"][:"c"].as(:"a")
{c: 1, Sequel[:t][:c] => 2, Sequel.as(:c, :a) => 3, Sequel[:t][:c].as(:a) => 4}
