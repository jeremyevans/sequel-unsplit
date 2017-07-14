:c
S(:t)[:c]
Sequel.as(:c, :a)
S(:t)[:c].as(:a)
:"c"
S(:"t")[:"c"]
Sequel.as(:"c", :"a")
S(:"t")[:"c"].as(:"a")
{c: 1, S(:t)[:c] => 2, Sequel.as(:c, :a) => 3, S(:t)[:c].as(:a) => 4}
