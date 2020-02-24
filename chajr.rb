class Chajr < Formula
  desc "chajr (pronounced chair) is a bash script for getting Css, Html, And Javascript Ready."
  homepage "https://github.com/DavidStinson/chajr"
  url "https://github.com/DavidStinson/chajr/archive/v1.1.1.tar.gz"
  sha256 "1cba53676ce4278c09237db95c86c04d3198fd3f9681c008eda3be9ade34ad70"

  bottle :unneeded

  def install
    bin.install "chajr"
  end

  def post_install
    # Base chajr
    if !(File.exist?((etc/"chajr/readmeTemplate.txt"))) then
      (etc/"chajr/readmeTemplate.txt").write readme_template
    end
    if !(File.exist?((etc/"chajr/htmlTemplate.txt"))) then
      (etc/"chajr/htmlTemplate.txt").write html_template
    end
    if !(File.exist?((etc/"chajr/cssTemplate.txt"))) then
      (etc/"chajr/cssTemplate.txt").write css_template
    end
    if !(File.exist?((etc/"chajr/jsTemplate.txt"))) then
      (etc/"chajr/jsTemplate.txt").write js_template
    end

    # Prettier chajr
    if !(File.exist?((etc/"chajr/prettierTemplate.txt"))) then
      (etc/"chajr/prettierTemplate.txt").write prettier_template
    end

    # Node, Express, and MangoDB chajr
    # www
    if !(File.exist?((etc/"chajr/node/bin/wwwTemplate.txt"))) then
      (etc/"chajr/node/bin/wwwTemplate.txt").write node_www_template
    end
    
    # .env
    if !(File.exist?((etc/"chajr/node/envTemplate.txt"))) then
      (etc/"chajr/node/envTemplate.txt").write node_env_template
    end

    # database 
    if !(File.exist?((etc/"chajr/node/config/dbTemplate.txt"))) then
      (etc/"chajr/node/config/dbTemplate.txt").write node_db_template
    end
    
    # server.js
    if !(File.exist?((etc/"chajr/node/serverTemplate.txt"))) then
      (etc/"chajr/node/serverTemplate.txt").write node_server_template
    end

    # controllers
    if !(File.exist?((etc/"chajr/node/controllers/controllersTemplate.txt"))) then
      (etc/"chajr/node/controllers/controllersTemplate.txt").write node_controllers_template
    end

    # models
    if !(File.exist?((etc/"chajr/node/models/modelTemplate.txt"))) then
      (etc/"chajr/node/models/modelTemplate.txt").write node_model_template
    end

    # public/css
    if !(File.exist?((etc/"chajr/node/public/cssTemplate.txt"))) then
      (etc/"chajr/node/public/cssTemplate.txt").write css_template
    end

    # routes
    if !(File.exist?((etc/"chajr/node/routes/routesTktksTemplate.txt"))) then
      (etc/"chajr/node/routes/routesTktksTemplate.txt").write node_routes_tktks_template
    end
    if !(File.exist?((etc/"chajr/node/routes/routesUsersTemplate.txt"))) then
      (etc/"chajr/node/routes/routesUsersTemplate.txt").write node_routes_users_template
    end
    if !(File.exist?((etc/"chajr/node/routes/routesIndexTemplate.txt"))) then
      (etc/"chajr/node/routes/routesIndexTemplate.txt").write node_routes_index_template
    end

    # views
    if !(File.exist?((etc/"chajr/node/views/viewsTktksIndexTemplate.txt"))) then
      (etc/"chajr/node/views/viewsTktksIndexTemplate.txt").write node_views_tktks_index_template
    end
    if !(File.exist?((etc/"chajr/node/views/viewsIndexTemplate.txt"))) then
      (etc/"chajr/node/views/viewsIndexTemplate.txt").write node_views_index_template
    end
    if !(File.exist?((etc/"chajr/node/views/viewsErrorTemplate.txt"))) then
      (etc/"chajr/node/views/viewsErrorTemplate.txt").write node_views_error_template
    end

    # package.json
    if !(File.exist?((etc/"chajr/node/packageJsonTemplate.txt"))) then
      (etc/"chajr/node/packageJsonTemplate.txt").write node_packageJson_template
    end


  end

  def readme_template; <<~EOS
  EOS
  end

  def html_template; <<~EOS
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <link rel="stylesheet" href="css/main.css"/>
      <script defer src="js/main.js"></script>
      <title>Title</title>
    </head>
    <body>
      
    </body>
    </html>
  EOS
  end

  def css_template; <<~EOS
    body {
      font-family: sans-serif;
    }
  EOS
  end

  def js_template; <<~EOS
    /*------------------------- Variables and Constants -------------------------*/



    /*------------------------ Classes and Objects ------------------------------*/



    /*---------------------------------- Cache ----------------------------------*/



    /*----------------------------- Event Listeners -----------------------------*/



    /*-------------------------------- Functions --------------------------------*/

  EOS
  end

  def prettier_template; <<~EOS
  {
    "trailingComma": "es5"
  }
  EOS
  end
  
  def node_www_template; <<~EOS
  #!/usr/bin/env node

  /**
  * Module dependencies.
  */

  const app = require('../server');
  const debug = require('debug')('test:server');
  const http = require('http');

  /**
  * Get port from environment and store in Express.
  */

  const port = normalizePort(process.env.PORT || '3000');
  app.set('port', port);

  /**
  * Create HTTP server.
  */

  const server = http.createServer(app);

  /**
  * Listen on provided port, on all network interfaces.
  */

  server.listen(port);
  server.on('error', onError);
  server.on('listening', onListening);

  /**
  * Normalize a port into a number, string, or false.
  */

  function normalizePort(val) {
    const port = parseInt(val, 10);

    if (isNaN(port)) {
      // named pipe
      return val;
    }

    if (port >= 0) {
      // port number
      return port;
    }

    return false;
  }

  /**
  * Event listener for HTTP server "error" event.
  */

  function onError(error) {
    if (error.syscall !== 'listen') {
      throw error;
    }

    const bind = typeof port === 'string'
      ? 'Pipe ' + port
      : 'Port ' + port;

    // handle specific listen errors with friendly messages
    switch (error.code) {
      case 'EACCES':
        console.error(bind + ' requires elevated privileges');
        process.exit(1);
        break;
      case 'EADDRINUSE':
        console.error(bind + ' is already in use');
        process.exit(1);
        break;
      default:
        throw error;
    }
  }

  /**
  * Event listener for HTTP server "listening" event.
  */

  function onListening() {
    const addr = server.address();
    const bind = typeof addr === 'string'
      ? 'pipe ' + addr
      : 'port ' + addr.port;
    debug('Listening on ' + bind);
  }
  EOS
  end

  def node_env_template; <<~EOS
    PORT=3000
  EOS
  end
  
  def node_server_template; <<~EOS
    const createError = require("http-errors");
    const express = require("express");
    const path = require("path");
    const cookieParser = require("cookie-parser");
    const logger = require("morgan");

    const indexRouter = require("./routes/index");
    const tktksRouter = require("./routes/tktks");
    const usersRouter = require('./routes/users');

    require("./config/database");
    require('dotenv').config();

    const app = express();

    // view engine setup
    app.set("views", path.join(__dirname, "views"));
    app.set("view engine", "ejs");

    app.use(logger("dev"));
    app.use(express.json());
    app.use(express.urlencoded({ extended: false }));
    app.use(cookieParser());
    app.use(express.static(path.join(__dirname, "public")));

    app.use("/", indexRouter);
    app.use("/tktks", tktksRouter);
    app.use('/users', usersRouter);

    // catch 404 and forward to error handler
    app.use(function(req, res, next) {
      next(createError(404));
    });

    // error handler
    app.use(function(err, req, res, next) {
      // set locals, only providing error in development
      res.locals.message = err.message;
      res.locals.error = req.app.get("env") === "development" ? err : {};

      // render the error page
      res.status(err.status || 500);
      res.render("error");
    });

    module.exports = app;
  EOS
  end

  def node_db_template; <<~EOS
    const mongoose = require('mongoose');

    mongoose.connect('mongodb://localhost/tktks', {
      useNewUrlParser: true, 
      useCreateIndex: true, 
      useUnifiedTopology: true
    });
  EOS
  end

  def node_controllers_template; <<~EOS
    const Tktk = require("../models/tktk");

    module.exports = {
      index
    };

    function index(req, res) {
      Tktk.find({}, function(err, tktks) {
        if (err) return next(err);
        res.render("tktks/index", { tktks });
      });
    }
  EOS
  end

  def node_model_template; <<~EOS
    const mongoose = require("mongoose");
    const Schema = mongoose.Schema;

    const tktkSchema = new Schema({

    });

    module.exports = mongoose.model("Tktk", tktkSchema);
  EOS
  end

  def node_routes_tktks_template; <<~EOS
    const express = require("express");
    const router = express.Router();
    const tktksCtrl = require("../controllers/tktks");

    router.get("/", tktksCtrl.index);

    module.exports = router;
  EOS
  end

  def node_routes_users_template; <<~EOS
    const express = require("express");
    const router = express.Router();

    router.get('/', function(req, res, next) {
      res.send('A place for users');
    });

    module.exports = router;
  EOS
  end

  def node_routes_index_template; <<~EOS
    const express = require('express');
    const router = express.Router();

    router.get('/', function(req, res, next) {
      res.render('index', { title: 'Tktk Index' });
    });

    module.exports = router;
    EOS
  end

  def node_views_tktks_index_template; <<~EOS
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link rel="stylesheet" href="/stylesheets/main.css" />
      <title>Tktks</title>
    </head>
    <body>
      
    </body>
    </html>
  EOS
  end

  def node_views_index_template; <<~EOS
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link rel="stylesheet" href="/stylesheets/main.css" />
      <title><%= title %></title>
    </head>
    <body>
      <h1><%= title %></h1>
      <p>Welcome to <%= title %></p>    
    </body>
    </html>
  EOS
  end

  def node_views_error_template; <<~EOS
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link rel="stylesheet" href="/stylesheets/main.css" />
      <title>!!ERROR!!</title>
    </head>
    <body>
      <h1><%= message %></h1>
      <h2><%= error.status %></h2>
      <pre><%= error.stack %></pre>
    </body>
    </html>
  EOS
  end

  def node_packageJson_template; <<~EOS
    {
      "name": "tktks",
      "main": "./bin/www",
      "version": "0.0.0",
      "private": true,
      "scripts": {
        "start": "node ./bin/www"
      },
      "dependencies": {
        "cookie-parser": "~1.4.4",
        "debug": "~4.1.1",
        "dotenv": "~8.2.0",
        "ejs": "~2.6.1",
        "express": "~4.16.1",
        "http-errors": "~1.6.3",
        "mongoose": "~5.9.2",
        "morgan": "~1.9.1"
      }
    }
  EOS
  end
end