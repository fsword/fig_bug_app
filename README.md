# fig\_bug\_app

when you use docker command:
```
$ docker build -t 'figbugapp' .
......
$ docker run --rm figbugapp
total 32
drwxr-xr-x  4 root root 4096 Feb 12 10:23 .
drwxr-xr-x 54 root root 4096 Feb 12 10:23 ..
-rw-rw-r--  1 root root    6 Feb 12 10:18 .dockerignore
drwxrwxr-x  8 root root 4096 Feb 12 10:20 .git
-rw-rw-r--  1 root root   55 Feb 12 10:15 Dockerfile
-rw-rw-r--  1 root root  247 Feb 12 10:23 README.md
-rw-rw-r--  1 root root   17 Feb 12 10:12 fig.yml
drwxrwxr-x  2 root root 4096 Feb 12 10:17 log
```

but when you use fig:
```
$ fig up
......
web_1 | total 28
web_1 | drwxr-xr-x  3 root root 4096 Feb 12 10:23 .
web_1 | drwxr-xr-x 54 root root 4096 Feb 12 10:24 ..
web_1 | -rw-rw-r--  1 root root    6 Feb 12 10:18 .dockerignore
web_1 | drwxr-xr-x  7 root root 4096 Feb 12 10:23 .git
web_1 | -rw-rw-r--  1 root root   55 Feb 12 10:15 Dockerfile
web_1 | -rw-rw-r--  1 root root  247 Feb 12 10:23 README.md
web_1 | -rw-rw-r--  1 root root   17 Feb 12 10:12 fig.yml
......
```
No `log` folder item anymore, I think it releated with .dockerignore:

```
log/*
```

So, is there some difference between docker and fig ? or it's just a bug?


