vagrant_rabbitmq
============

Have you ever wished you could run RabbitMQ locally ?

You can do this easily using this simple Vagrant + VirtualBox setup!

### Installation
* Download and install Vagrant and Virtualbox from the following links:
    - Vagrant - [http://vagrantup.com](http://vagrantup.com)
    - Virtualbox - [https://www.virtualbox.org/](https://www.virtualbox.org/)
* Clone this repo locally

### Starting RabbitMQ
* Now start RabbitMQ it by doing the following
    - `cd vagrant_rabbitmq`
    - `vagrant up`
* Wait for it to finish loading, which will take a few minutes the first time.
* Once it's started, you can manage RabbitMQ using the web based admin here:
    - [web based admin](http://localhost:15672)
    - using the username/password of `admin/password`
* And RabbitMQ is available on port 5672

### Stopping RabbitMQ
* When you want to stop RabbitMQ, run the following
    - `vagrant halt`
* If you want to delete it, run the following
    - `vagrant destroy`
