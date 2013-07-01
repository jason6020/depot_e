# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.delete_all

title_arr = ["C++ Programming Language", "Lisp Programming Language", "Think in C++", "Chinese Food"]
description_arr = ["The system Programming language, We all love it", "Best programmer use it", "This is a good book",
                    "Chinese food is good"]
image_url_arr = ["http://img3.douban.com/lpic/s4237033.jpg", "http://img3.douban.com/lpic/s1471961.jpg",
                 "http://img3.douban.com/lpic/s5678745.jpg", "http://img3.douban.com/lpic/s4143114.jpg"]
price_arr = [29.55, 72.99, 12.45, 66,59]

for i in 0...4

  Product.create(:title => title_arr[i], :description => description_arr[i], :image_url => image_url_arr[i], :price => price_arr[i])
end