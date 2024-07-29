# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.delete_all
# . . .
Product.create!(title: 'Mastering Modern APIs',
    description:
        %{<p>
        <em>"Mastering Modern APIs"</em> 
        is an essential guide for developers seeking to deepen their understanding of API design, implementation, and integration. 
        Authored by Jane Doe, this book delves into the principles of building robust and scalable APIs, exploring various technologies and best practices. 
        Readers will learn how to create efficient and secure APIs, understand the intricacies of RESTful services, and leverage advanced techniques for optimizing performance. 
        With practical examples and real-world scenarios, this book equips developers with the knowledge and tools needed to excel in the modern API landscape.
    </p>},
    image_url: 'api-book.jpg',
    price: 25.00)
# . . .

# . . .
Product.create!(title: 'Docker Containers Unleashed',
    description:
        %{<p>
        <em>"Docker Containers Unleashed"</em> 
        is an in-depth guide to mastering Docker containers, written by Alex Turner. 
        This book provides a thorough exploration of containerization, offering insights into how Docker can be used to streamline development and deployment processes. 
        Readers will learn the fundamentals of Docker, from setting up environments and managing containers to advanced topics like orchestration and security. 
        With practical examples, step-by-step instructions, and best practices, this book equips developers and IT professionals with the skills needed to leverage Docker effectively in their projects.
    </p>},
    image_url: 'docker-book.jpg',
    price: 20.00)
# . . .

# . . .
Product.create!(title: 'Ruby Programming Essentials',
    description:
        %{<p>
        <em>"Ruby Programming Essentials"</em> 
        is a comprehensive introduction to the Ruby programming language, tailored for both beginners and experienced developers. 
        Written by John Smith, this book covers the fundamentals of Ruby, from basic syntax and data structures to advanced concepts like metaprogramming and concurrency. 
        Readers will discover practical coding techniques, best practices, and real-world examples that demonstrate the power and flexibility of Ruby. Whether you are new to programming or looking to expand your skills, this book provides the essential knowledge needed to master Ruby and develop robust applications.
    </p>},
    image_url: 'ruby-book.jpg',
    price: 20.00)
# . . .

# . . .
Product.create!(title: 'Mastering Sidekiq',
    description:
        %{<p>
        <em>"Mastering Sidekiq"</em> 
        is a comprehensive guide to using Sidekiq for background job processing in Ruby on Rails applications, authored by Emily Green. 
        This book covers the essentials of Sidekiq, including setup, configuration, and integration with Rails. 
        Readers will explore advanced topics such as job prioritization, scheduling, monitoring, and optimizing performance. 
        With practical examples, best practices, and troubleshooting tips, this book equips developers with the knowledge and skills needed to efficiently manage background tasks and improve the scalability and performance of their applications.
    </p>},
    image_url: 'sidekiq-book.jpg',
    price: 30.00)
# . . .

# . . .
Product.create!(title: 'Kubernetes in Action',
    description:
        %{<p>
        <em>"Kubernetes in Action"</em> 
        is a comprehensive guide to mastering Kubernetes, the leading container orchestration platform. 
        Authored by Lisa White, this book covers the essential concepts and advanced techniques needed to deploy, manage, and scale containerized applications with Kubernetes. 
        Readers will explore Kubernetes architecture, installation, and configuration, as well as best practices for security, monitoring, and troubleshooting. 
        With practical examples and step-by-step tutorials, this book provides a solid foundation for anyone looking to leverage Kubernetes to enhance their DevOps workflow and achieve efficient and scalable application management.
    </p>},
    image_url: 'kubernetes-book.jpg',
    price: 45.00)
# . . .