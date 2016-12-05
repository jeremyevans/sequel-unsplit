:c
Sequel.qualify(:t, :c)
Sequel.as(:c, :a)
Sequel.qualify(:t, :c).as(:a)
:"c"
Sequel.qualify(:"t", :"c")
Sequel.as(:"c", :"a")
Sequel.qualify(:"t", :"c").as(:"a")
