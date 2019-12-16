# txt2tags website

Here you will find the files for the full https://txt2tags.org website.

**IMPORTANT:** Please preview the results in your browser before
committing the changes to GitHub.

Please avoid mixed content: always use **https links**.

Some files seems to be missing. But they're not! They're included
directly from GitHub. See `_redirects` for details.

## Build & Deploy

Every commit to the `master` branch triggers a complete site build (see [build.sh](https://github.com/txt2tags/website/blob/master/build.sh) file) and deploy in Netlify.

The deploy logs are in https://app.netlify.com/sites/txt2tags/deploys.


## Linking GitHub files

There's a copy of https://github.com/txt2tags/doc inside the web server root,
so just use http://txt2tags.org/doc/
as the base URL to link any document inside it. HTML documents will be
rendered and UTF-8 is the default encoding, so you won't have any
problem showing a document. For example, to link the French man page:

http://txt2tags.org/doc/French/manpage-fr.html

To show files that are not inside the `/doc` folder, use the
GitHub raw link. The raw root URL is:

https://raw.githubusercontent.com/txt2tags/txt2tags/v2/

So, for example, to make a link to the Creole sample:

https://raw.githubusercontent.com/txt2tags/txt2tags/v2/samples/sample.creole

There's one caveat: HTML files won't be rendered, their sources will be shown:

https://raw.githubusercontent.com/txt2tags/txt2tags/v2/samples/sample.html


## Docs path

The `doc` folder is special for the website. Its location changes in
the web server, to be contained inside the root folder.

```
GitHub structure:
    https://github.com/txt2tags/doc
    https://github.com/txt2tags/website

Web server structure:
    /index.html
    /doc/
```

So keep that in mind when writing or editing pages.

If you need to include the contents of a document inside a page,
use the `./doc/` path. If you are making a link to a document, use
the `doc/` path. Example:

```
%!include: ./doc/English/markup/markup.t2t

See the [Markup Demo](doc/English/markup/markup.html) document.
```

You must have the [txt2tags/doc](https://github.com/txt2tags/doc) repository
cloned in your machine, inside the [txt2tags/website](https://github.com/txt2tags/website) one.


## _redirects

The magic of using other GitHub files in the website happens here.
Redirection of moved and deleted files too.

If you don't know what ``_redirects`` is, please DO NOT edit it.
You may break the full website doing so.

If you're comfortable with ``.htaccess``, the comments inside the file
should be enough to guide you.

## Convert the full site

If you alter files inside the `inc` folder, such as `config.t2t` or
`footer.t2t`, you will need to reconvert all the files.

```
cd txt2tags/website/
./build.sh
```

## Update docs


The docs and their translations are read directly from GitHub.
You don't need to worry about it.

The only exceptions, that need to be converted manually are:

- website/sample-full.t2t
- website/manpage.t2t
- website/markup.t2t

Because they add the website layout around the GitHub document.

## Special updates

### Update markup.zip

```
cd txt2tags/website/
rm -f markup.zip
cd ../doc/English && zip -q -r $OLDPWD/markup.zip markup && cd -
unzip -l markup.zip
```

### Update User Guide

```
./txt2tags/doc/English/userguide/htmlgen
```

## Legacy files

- index.t2t.old
- misc/history.t2t
- misc/oldnews.t2t
- misc/pt-comentarios.t2t
- misc/pt-enquete.t2t
- misc/top-secret.html

These are old files that are kept for history purposes.
