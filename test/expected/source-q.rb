:c
Sequel.qualify(:t, :c)
Sequel[:c].as(:a)
Sequel.qualify(:t, :c).as(:a)
:"c"
Sequel.qualify(:"t", :"c")
Sequel[:"c"].as(:"a")
Sequel.qualify(:"t", :"c").as(:"a")
