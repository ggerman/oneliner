# One Liner:

# 🧨 oneliner

Sometimes you just want to run the thing.  
This repo contains **Docker one-liners** to quickly create or run Ruby and Ruby framework-based projects — no local setup needed.

Ideal for quick testing, prototyping, teaching, or Friday experiments. 😎  
Just open your terminal and go.

---

## 🔧 Requirements

- Docker
- A terminal
- A sense of adventure (and maybe some caution)

---

## 📁 Available Frameworks & Tools

- ✅ Pure Ruby
- ✅ Sinatra
- ✅ Rails
- ✅ Grape
- ✅ Rodakase
- ✅ Cuba

Each folder contains a minimal example that can be run using the one-liner shown below.

---

## 🧪 Pure Ruby Example

File: `ruby/sort.rb`

```bash
docker run --rm -it \
  -v "$(pwd):/usr/src/app" \
  -w /usr/src/app \
  ruby:3.2 \
  sh -c "gem install test pry && ruby ruby/sort.rb"
```



```bash
.
├── cuba
│   └── app.rb
├── grape
│   ├── app.rb
│   └── config.ru
├── LICENSE
├── rails-app
│   ├── app
│   ├── bin
│   ├── config
│   ├── config.ru
│   ├── db
│   ├── Dockerfile
│   ├── Gemfile
│   ├── Gemfile.lock
│   ├── lib
│   ├── log
│   ├── public
│   ├── Rakefile
│   ├── README.md
│   ├── script
│   ├── storage
│   ├── test
│   ├── tmp
│   └── vendor
├── README.md
├── rodakase
│   ├── app.rb
│   ├── Gemfile
│   ├── Gemfile.lock
│   └── vendor
├── ruby
│   └── sort.rb
└── sinatra
    └── app.rb

20 directories, 16 files
```

## 🌐 Sinatra Example

File: sinatra/app.rb

```bash
docker run --rm -p 4567:4567 \
  -v "$(pwd):/usr/src/app" \
  -w /usr/src/app \
  ruby:3.2 \
  sh -c "gem install sinatra rack puma rackup && ruby sinatra/app.rb"
```

Visit: http://localhost:4567


## ⚙️ Rails App

###  Create a New App

```bash
docker run --rm -p 3000:3000 \
  -v "$(pwd):/usr/src/app" \
  -w /usr/src/app \
  ruby:3.2 \
  sh -c "apt-get update && apt-get install -y nodejs yarn && gem install rails bundler && rails new rails-app"
```

### Run an Existing App

```bash
docker run --rm -p 3000:3000 \
  -v "$(pwd)/rails-app:/usr/src/app" \
  -w /usr/src/app \
  ruby:3.2 \
  sh -c "apt-get update && apt-get install -y nodejs yarn && gem install bundler && bundle install && rails s -b 0.0.0.0"

```

Visit: http://localhost:3000

## 🍇 Grape API

```bash
docker run --rm -p 9292:9292 \
  -v "$(pwd)/grape:/usr/src/app" \
  -w /usr/src/app \
  ruby:3.2 \
  sh -c "gem install grape rack rackup puma && rackup -o 0.0.0.0"
```

Visit: http://localhost:9292

## 🤔 Why One-Liners?
Because sometimes:

You want to test a gem or script fast

You don't want to pollute your local Ruby environment

You’re teaching or demoing something quickly

You like your dev life simple

## ⚠️ One-Liner Wisdom
One-liners are great, but remember:

With great speed comes great responsibility. 🚨

Use them wisely, especially in production-like setups.

## 💬 Get in Touch
Want to build things the clean way? Architecture, testing, scalable apps?

## [🧠 Let’s talk](https://rubystacknews.com/get-in-touch/)

