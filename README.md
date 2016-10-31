# Elm Quickstart
**Elm**, **SASS**, **Gulp** (ES6), **Javscript** synchronized to Elm bootstrap.

## What's in the Quickstart
This project contains the *elm*, *npm* and *Gulp* configuration to start developing
 Elm SPA from scratch.

It comes with the following packages available and configured:

* [Bootstrap](http://getbootstrap.com/) is automatically installed via *npm* and
 copied to the `public/dist/css` folder, then it is imported in the `index.html`.
* [SASS](http://sass-lang.com/) preprocessor is used to compile the assets found in
 `src/styles` and minify them to `public/dist/css`, then included in the `index.html`.
* [Elm](http://elm-lang.org/) language is supported, compiling all the files found in
 `src/elm`, minifying them to `public/dist/js`, and included in the `index.html`.

Furthermore, it offers the hook to execute your external Javascript code detecting
 Elm's bootstrap, using the
  [MutationObserver API](https://developer.mozilla.org/en/docs/Web/API/MutationObserver).
You can find the code in `public/index.html`, the function is this one:

```javascript
    var mo = new MutationObserver(function(mutationRecords, instance) {
        // check modifications
        for (var i = 0; i < mutationRecords.length; i += 1) {
            // if new DOM nodes
            if (mutationRecords[i].addedNodes.length > 0) {
                // elm just started!
                console.debug('Hello from the JS, Elm just started rendering!');
                mo.disconnect();
            }
        }
    });
```

## Why the need to synchronize Javascript to Elm?
When we where building [MaltaJS registration page](https://github.com/roedit/maltajs-elm)
 using Elm, we needed a quick  way to run the [GoogleMap](https://developers.google.com/maps/)
 plugin without messing up with Elm code, being sure that the Elm app had
 already rendered its HTML.
 
Since the external plugin doesn't need to exchange data with Elm, a Port looked
 too complex as a solution.

If you need to run a plugin like *GoogleMap* or a *jQuery plugin*, you can use this
 method to have the modules running on your page completely independent each other,
 while guaranteeing that Elm will be bootstrapped first. 


## Instructions
To get started in a matter of minutes, just type the following commands:

```sh
$ git clone git@github.com:pietro909/elm-quickstart.git
$ npm install
$ gulp build
$ npm start
```

Open `localhost:8000` with your browser.

## Where is the code
Elm sources are to be placed under `src/elm`.

SASS sources are located in `src/styles`.

The Gulp's configuration files are into `gulp/` folder.

## Credits
I strongly thank my colleague [Andrei Toma](http://andreitoma.com/) for helping me
 with Gulp configuration, and the whole Elm community on Slack: they always welcome
 newbies and are happy to help!
