# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Testimonial.destroy_all
puts "--------------  seeding database   ------------------"
Testimonial.create!([
    { first_name: "Michael", last_name: "Smith", position: "COO", company: "Innovate Solutions", content: "The team at AOV Tech has exceeded our expectations. Their Ruby on Rails expertise is unparalleled, and they delivered a highly complex project on time and within budget. Their innovative solutions have significantly boosted our business growth." },
    { first_name: "Sarah", last_name: "Taylor", position: "Marketing Director", company: "Creative Minds", content: "Working with Aov Tech has been a game-changer for us. Their team of skilled developers tackled our complex challenges with ease and provided practical solutions that were both innovative and effective. Our website now performs better than ever." },
    { first_name: "Robert", last_name: "Brown", position: "Product Manager", company: "Tech Innovations", content: "They are simply the best. Their deep understanding of Ruby on Rails allowed us to overcome significant technical hurdles. The end result was a sleek, high-performance website that has helped us attract and retain more customers." },
    { first_name: "Jessica", last_name: "Williams", position: "VP of Engineering", company: "Future Tech", content: "Choosing AOV Tech was one of the best decisions we've made. Their developers are not only highly skilled but also very responsive and easy to work with. They provided innovative solutions that were perfectly aligned with our business goals." },
    { first_name: "David", last_name: "Miller", position: "HR", company: "NextGen Solutions", content: "Fantastic! They handled our project with utmost professionalism and delivered a robust, scalable website that exceeded our expectations. Their innovative approach and practical solutions have greatly enhanced our online presence." },
    { first_name: "Emma", last_name: "Wilson", position: "Public Relations Specialist", company: "Digital Dynamics", content: "AOV Tech's developers are true experts in Ruby on Rails and frontend. They took on our complex project and delivered a high-quality solution that has greatly improved our operational efficiency. We couldn't be happier with the results." },
    { first_name: "Daniel", last_name: "Anderson", position: "CEO", company: "Tech Innovators", content: "We are extremely impressed with AOV Tech. Their team's dedication and technical prowess have resulted in a top-notch website that meets all our needs. Their innovative solutions have provided us with a significant competitive advantage." },
    { first_name: "Sophia", last_name: "Martinez", position: "Sales Executive", company: "Web Pioneers", content: "Working with Aov Tech has been a pleasure. Their team is highly skilled, professional, and always ready to take on new challenges. They delivered a complex project with ease, and the innovative solutions they provided have greatly benefited our business." },
    { first_name: "Emily", last_name: "Clark", position: "Chief Marketing Officer", company: "Bright Future Co.", content: "AOV Tech transformed our vision into reality. Their innovative and practical solutions using Ruby on Rails were exactly what we needed. Their team's dedication and expertise have helped our business grow significantly." },
])


puts ""
puts "Done !"