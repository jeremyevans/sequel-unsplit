:c
Sequel.qualify(:t, :c)
:c.as(:a)
Sequel.qualify(:t, :c).as(:a)
:"c"
Sequel.qualify(:"t", :"c")
:"c".as(:"a")
Sequel.qualify(:"t", :"c").as(:"a")
{c: 1, Sequel.qualify(:t, :c) => 2, :c.as(:a) => 3, Sequel.qualify(:t, :c).as(:a) => 4}
