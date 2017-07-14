:c
Sequel.qualify(:t, :c)
Sequel.as(:c, :a)
Sequel.qualify(:t, :c).as(:a)
:"c"
Sequel.qualify(:"t", :"c")
Sequel.as(:"c", :"a")
Sequel.qualify(:"t", :"c").as(:"a")
{c: 1, Sequel.qualify(:t, :c) => 2, Sequel.as(:c, :a) => 3, Sequel.qualify(:t, :c).as(:a) => 4}
