smart-spiner-cis
=================

With the help of this gem you can easily have the spiner(ajax-loading-spiner) for your application  on load(page load). :-)


INSTALLTION

First thing you need to do is the installation , you can follow the below mentioned steps to install the gem inside your rails application.
You need to add sudo if you are not using rvm(ruby version manager)

```
gem install smart-spinner-cis
```

Add this following line in your Gemfile and then run bundle install.
```
gem 'smart-spinner-cis'
```

Run the generator command:

```
rails g smart_spinner_cis:install
```

USAGE

Once you have installed this gem you can do the following :-


In application layout call spinner_tag,for example in application.html.haml

```HTML
  = spinner_tag
```

And enjoy this!!
