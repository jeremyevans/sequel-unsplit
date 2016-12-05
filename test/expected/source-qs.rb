:c
Sequel.qualify(:t, :c)
:c.as(:a)
Sequel.qualify(:t, :c).as(:a)
:"c"
Sequel.qualify(:"t", :"c")
:"c".as(:"a")
Sequel.qualify(:"t", :"c").as(:"a")
