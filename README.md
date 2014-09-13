gauenv
======

gauenv is Gauche Version Manager.
this is similar to [rbenv](https://github.com/sstephenson/rbenv).

Almost all of code come from rbenv. Thanks very match!


Install
======

```bash
$ git clone https://github.com/ryotakato/gauenv.git ~/.gauenv
$ echo 'export PATH="$HOME/.gauenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(gauenv init -)"' >> ~/.bash_profile
$ exec $SHELL -l
```

gauenv has plugins feature.
I recommend using [gauche-build](https://github.com/ryotakato/gauche-build) for installing gauche. See also gauche-build.



Usage
=====

if using gauche-build, 

```bash
$ gauenv install 0.9.4
$ gauenv rehash
```

set global version

```bash
$ gauenv global 0.9.4
$ gauenv rehash
$ gosh -V
Gauche scheme shell, version 0.9.4 [utf-8,pthreads], x86_64-apple-darwin13.1.0
```


set local version

```bash
$ gosh -V
Gauche scheme shell, version 0.9.4 [utf-8,pthreads], x86_64-apple-darwin13.1.0
$ cd sample-dir
$ gauenv local 0.9.3
$ gauenv rehash
$ gosh -V
Gauche scheme shell, version 0.9.3 [utf-8,pthreads], x86_64-apple-darwin13.1.0
$ cd ../
$ gosh -V
Gauche scheme shell, version 0.9.4 [utf-8,pthreads], x86_64-apple-darwin13.1.0
```

LICENSE
=====

See [LICENSE](./LICENSE)


