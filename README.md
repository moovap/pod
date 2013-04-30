[![Build Status](https://travis-ci.org/jdanielnd/pod.png?branch=master)](https://travis-ci.org/jdanielnd/pod)

# Pod

Pod is a back-end application that provides an API for HTML to PDF conversion.

We intend to create a platform for PDF files creation that makes it feasible for small companies to include PDF generation in its applications.

The commercial solutions available today are very expensive and prevents cost-effective solutions to include PDFs as one of its features.

This is an application that needs to be hosted in a server where you have full access, since you will need to install [Xvfb](http://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml).

Here is a blog post about how to install Pod as a HTML to PDF provider [How to create your own HTML to PDF provider](http://blog.hugerepo.com/2013/04/29/how-to-create-your-own-html-to-pdf-provider/)

## Installation

In order to have the proper environment set, you need to install Xvfb, which allows us to run wkhtmltopdf within a X server instance. To do that, type:

    sudo apt-get install xvfb

You also need to install the `libssl-0.9.8` library, what allows Qt to fetch SSL sites. That might be the case if the HTML you're trying to render have assets (such as CSS or JS) hosted in `https` websites.

    sudo apt-get install libssl-0.9.8

You also need to have a proper enviroment to run a Ruby on Rails application. I followed this [RailsCast](http://railscasts.com/episodes/335-deploying-to-a-vps) provided by Ryan Bates. It's a pro feature, so you need to subscribe it to get access. If you're a Ruby/Rails programmer, I really recommend you to do so.

If all that set, you just need to get the application in your machine, and deploy it to your server.

    git clone git@github.com:jdanielnd/pod
    cd pod
    cap deploy:setup
    cap deploy:cold

## Usage

After you have your pod instance successfully running, you can request PDF files bu using its public API.

    wget http://<youserveraddress.com>/convert?filename=test&html=<h3>Blabla</h3>

There is a gem called [pod_rails](https://github.com/jdanielnd/pod_rails) that integrates it to your Rails application.

## Contributing

If you'd like to contribute to Pod, follow the steps below:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

We really need people to help us improving Pod!