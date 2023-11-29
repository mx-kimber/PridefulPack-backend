# PridefulPack - backend


🚧 🚨 work in progress 🚧 🚨

This Rails backend project for a pet sitting business web application primarily uses JSON for data exchange. All API endpoints return data in JSON format.  

- Ruby version 3.1.3p185
- Rails version 7.0.7.2
- Database: PostgreSQL

### 👉 React frontend (https://github.com/mx-kimber/PridefulPack) 👈

# Database Setup

### PostgreSQL

Before you can use this Rails application, you'll need to create and set up the PostgreSQL database. Follow these steps:

* Ensure that you have PostgreSQL installed on your system. You can install it using your system's package manager or download it from the official website (https://www.postgresql.org/).

Start the PostgreSQL service if it's not already running.
On macOS using Homebrew:

```
brew services start postgresql
```
On Linux using systemd:
```
sudo systemctl start postgresql
```

---

## Install Active Storage (if not already done)
This Rails application uses Active Storage for file attachments. 
Set up Active Storage by running the following command:
```
rails active_storage:install
```
---
## Clone the repository
```
git clone https://github.com/mx-kimber/PridefulPack-backend.git
```
## Install dependencies 
```
bundle install
```
## Create the database
```
rails db:create
```

## Set up the database
There are no seeds in this app currently, so feel free to skip that command
```
rails db:migrate
rails db:seed 
```
---
## 💎 Current list of all installed dependencies 💎
```
bundle list
```
Make sure yours match the below:

  * actioncable (7.0.7.2)
  * actionmailbox (7.0.7.2)
  * actionmailer (7.0.7.2)
  * actionpack (7.0.7.2)
  * actiontext (7.0.7.2)
  * actionview (7.0.7.2)
  * activejob (7.0.7.2)
  * activemodel (7.0.7.2)
  * activerecord (7.0.7.2)
  * activestorage (7.0.7.2)
  * activesupport (7.0.7.2)
  * addressable (2.8.5)
  * bcrypt (3.1.19)
  * bindex (0.8.1)
  * bootsnap (1.16.0)
  * builder (3.2.4)
  * capybara (3.39.2)
  * concurrent-ruby (1.2.2)
  * crass (1.0.6)
  * date (3.3.3)
  * debug (1.8.0)
  * domain_name (0.5.20190701)
  * erubi (1.12.0)
  * ffi (1.15.5)
  * ffi-compiler (1.0.1)
  * globalid (1.1.0)
  * http (5.1.1)
  * http-cookie (1.0.5)
  * http-form_data (2.3.0)
  * i18n (1.14.1)
  * image_processing (1.12.2)
  * importmap-rails (1.2.1)
  * io-console (0.6.0)
  * irb (1.7.4)
  * jbuilder (2.11.5)
  * jsonapi-serializer (2.2.0)
  * jwt (2.7.1)
  * llhttp-ffi (0.4.0)
  * loofah (2.21.3)
  * mail (2.8.1)
  * marcel (1.0.2)
  * matrix (0.4.2)
  * method_source (1.0.0)
  * mini_magick (4.12.0)
  * mini_mime (1.1.5)
  * minitest (5.19.0)
  * msgpack (1.7.2)
  * net-imap (0.3.7)
  * net-pop (0.1.2)
  * net-protocol (0.2.1)
  * net-smtp (0.3.3)
  * nio4r (2.5.9)
  * nokogiri (1.15.4)
  * pg (1.5.3)
  * public_suffix (5.0.3)
  * puma (5.6.7)
  * racc (1.7.1)
  * rack (2.2.8)
  * rack-cors (2.0.1)
  * rack-test (2.1.0)
  * rails (7.0.7.2)
  * rails-dom-testing (2.2.0)
  * rails-html-sanitizer (1.6.0)
  * railties (7.0.7.2)
  * rake (13.0.6)
  * regexp_parser (2.8.1)
  * reline (0.3.8)
  * rexml (3.2.6)
  * ruby-vips (2.2.0)
  * rubyzip (2.3.2)
  * selenium-webdriver (4.10.0)
  * sprockets (4.2.0)
  * sprockets-rails (3.4.2)
  * stimulus-rails (1.2.2)
  * thor (1.2.2)
  * timeout (0.4.0)
  * turbo-rails (1.4.0)
  * tzinfo (2.0.6)
  * unf (0.1.4)
  * unf_ext (0.0.8.2)
  * web-console (4.2.0)
  * webdrivers (5.3.1)
  * websocket (1.2.9)
  * websocket-driver (0.7.6)
  * websocket-extensions (0.1.5)
  * xpath (3.2.0)
  * zeitwerk (2.6.11)
---


If you have any questions or need assistance, please contact Kimber at mx.kimber@gmail.com
