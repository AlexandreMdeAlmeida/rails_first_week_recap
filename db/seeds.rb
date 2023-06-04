# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Dropping data..."
Post.destroy_all
puts "Creating new seed"

MODULES_LW = ["Ruby", "OOP", "DATABASE", "FRONT-END", "RUBY ON RAILS", "PROJECTS"]
MODULE_CONTENT = ["Ruby, a dynamic and expressive language, is covered in 6 blocks. The first covers programming basics, variables, methods, and built-in classes. The second focuses on flow control, conditionals, and arrays. The third explores powerful iterators like 'each' and 'map,' along with Ruby blocks called with 'yield.' The fourth introduces hashes, ideal for key-value pairs, and symbols for efficient identifiers. These blocks provide a foundation for mastering Ruby's readability and productivity.",
  "OOP module has 6 blocks covering classes, instances, inheritance, and software architecture. Block 1 focuses on defining classes, instances, variables, methods, constructors, and accessors. Block 2 covers advanced concepts like inheritance, class methods, and 'self' keyword. The software architecture block introduces MVC pattern and builds a cookbook app over 2 blocks. Block 4 concludes the cookbook app with a recap and optional adaptation to a web-app using Sinatra gem. The data models section consists of the Food Delivery challenge spread across 2 blocks. It covers dealing with multiple data models and encourages persistence. The final block offers a recap and livecode session for completing the Food Delivery app",
  "The Database & Active Record module consists of 4 blocks. Block 1 covers schema design, relational databases, and SQL queries for reading data. Block 2 delves into CRUD operations and introduces SQL keywords for writing data. Block 3 explores Active Record, a powerful Ruby library that connects objects to databases. It explains how Active Record models are linked to tables through naming conventions. Block 4 focuses on associations and validations within Active Record, providing a deeper understanding of data relationships and data integrity.",
  "The Front-end module consists of 8 lectures, including 7 days of content and 1 project-day for final project preparation. Day 1 covers HTML and CSS concepts, building a profile page and deploying it using GitHub Pages. Day 2 focuses on creating a CSS component library and organizing components. Day 3 introduces Bootstrap, grids, layouts, and responsive design techniques. Day 4 begins the JavaScript submodule, exploring the basics and algorithmic challenges. Day 5 dives into the DOM, events, and building dynamic interfaces. Day 6 covers HTTP, AJAX, and fetching content dynamically. Day 7 explores using JavaScript plugins and organizing code in a front-end app. The final day is dedicated to product design and prototyping, culminating in a demo presentation.",
  "The Rails module consists of 10 lectures, covering two weeks of learning. The first week, Rails 101, focuses on building a Rails app each day. Topics include routing, controllers, views, models with CRUD actions, advanced routing, front-end setup, hosting, image upload, and core Rails concepts. In the second week, students work on the Airbnb project in teams, building an MVP clone. Morning lectures cover authentication, authorization, geocoding, search techniques, and AJAX integration. Quizzes and demos evaluate progress. By the end, students have a solid understanding of Rails and its components for developing web applications.",
  "In the Projects module, students embark on their final journey in the program. Time is of the essence, and they are encouraged to deploy their projects frequently. Key milestones include an intermediate demo for feedback, a dress rehearsal, and the grand Demoday event. Project instructions on Kitt provide guidance for effective project management and coding practices. Morning lectures cover advanced topics such as real-time features with ActionCable, building APIs, utilizing Sidekiq for background jobs, and mastering advanced SQL queries for data presentation. This module prepares students for the culmination of their hard work and showcases their projects to a wider audience."
]

6.times do | index |
  Post.create(title: MODULES_LW[index], content: MODULE_CONTENT[index])
end
