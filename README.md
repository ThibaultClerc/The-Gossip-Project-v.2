<h1 align="center">
  <br>
  <a href="https://en.wikipedia.org/wiki/Gossip"><img src="https://images.vexels.com/media/users/3/157869/isolated/preview/13916a3fd62c9de9a2fdb623b38c0d1a-bare-teeth-open-mouth-icon-by-vexels.png" alt="The Gossip Project" width="200"></a>
  <br>
  The Gossip Project v.2
  <br>
</h1>

**The Gossip Project v.2** is our fourth **Ruby on Rails** DB work running with **PostGreSQL**, architectured with **MVC** design pattern. The idea is to match users, cities, gossips, tags, private messages & comments. Here, we manipulated Models, Views and Controllers to display dynamic pages.

<details><summary><b>Show the exercise instructions</b></summary>

* **One user** belongs to **one city**.
* **One city** can have **multiple users**.
* **One user** can write **multiple gossips**.
* **One gossip** can only belong to **one user**.
* **One gossip** can have **multiple tags**.
* **One gossip** can only be written by **one user**.
* **One PM** can only have **one sender** but **one or multiple receivers**.
* **One gossip** can have **multiple comments**.
* **One comment** can only belong to **one gossip**.
* **One user** can write **multiple comments**.
* **One comment** can only have **one user**.
* **One user** can put **multiple likes or comments**.

</details>

## How To Use

To clone and run this application, you'll need [Ruby 2.5.1](https://www.ruby-lang.org/en/news/2018/03/28/ruby-2-5-1-released/) and [Rails 5.2.4.3](https://rubygems.org/gems/rails/versions/5.2.4.3) installed on your computer. Then, run theses on your command line:

```bash
# Clone this repository
$ git clone https://github.com/ThibaultClerc/THP-day-26-The-Gossip-Project.git

# Start postgresql
$ sudo service postgresql start

# Go into the main repository and install dependencies
$ bundle install

# Initiate database
$ rails db:create

# Initiate migrations
$ rails db:migrate

# Initiate seeds
$ rails db:seed

# Finally, go to http://localhost:3000/ and have fun
```
