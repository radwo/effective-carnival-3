require 'mysql2'

client = Mysql2::Client.new(:host => "127.0.0.1", :username => "root", :password => "kavez", :database => "testdb", :port => "3306")
result = client.query('SELECT 1;');
p result.first

#DB = Sequel.connect(adapter: 'mysql2', host: 'localhost', user: 'root', password: 'kavez', database: 'testdb')
#DB.create_table :items do
#  primary_key :id
#  String :name
#  Float :price
#end
#
#items = DB[:items] # Create a dataset
#
## Populate the table
#items.insert(:name => 'abc', :price => rand * 100)
#items.insert(:name => 'def', :price => rand * 100)
#items.insert(:name => 'ghi', :price => rand * 100)
##
## # Print out the number of records
#puts "Item count: #{items.count}"
##
## # Print out the average price
#puts "The average price is: #{items.avg(:price)}"
