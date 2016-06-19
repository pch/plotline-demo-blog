# Plotline Demo Blog

This is a demo Rails app for [Plotline](https://github.com/pch/plotline)

Feel free to clone the repo and base your own blog/website on it.

# Setup

First of all, you'll have to create a directory for your content. I store mine
on Dropbox, so that it can be easily synced to my server. For development,
though, dropbox is not required. You can start with a very basic structure:

```shell
mkdir blog-content
cd blog-content
mkdir media posts pages drafts
echo "---\ntitle: Hello world\ntype: post\n---\n\nThis is my first blog post\n" > posts/"$(date +'%Y-%m-%d')"-hello-world.md
```

In order to run the app, you'll need: postgres, python and homebrew (mac). Once
you have that, the following script will install fswatch/inotify-tools required
for monitoring changes in the content directory.

```shell
git clone git@github.com:pch/plotline-demo-blog.git
cd plotline-demo-blog
bin/setup
```

The script will ask you to provide the location of your content directory
- simply paste the absolute path of the `blog-content` directory created above.

Once it's set up, modify the `--source` directory path in `Procfile` and run:

```shell
foreman start
```
