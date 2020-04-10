class Chajr < Formula
  desc "chajr (pronounced chair) is a bash script for getting Css, Html, And Javascript Ready."
  homepage "https://github.com/DavidStinson/chajr"
  url "https://github.com/DavidStinson/chajr/archive/V1.2.1.tar.gz"
  sha256 "f392c0c08c3f052189ed62213fb1e3dd7f66a26566340808c443b340a35934f4"

  bottle :unneeded

  def install
    bin.install "chajr"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
  end

  def post_install
    # Base chajr ---------------------------------------------------------------
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

    # Node, Express, and MangoDB chajr -----------------------------------------
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

    # MongoDB, Express, React, Node chajr --------------------------------------
    #server.js
    if !(File.exist?((etc/"chajr/mern/serverTemplate.txt"))) then
      (etc/"chajr/mern/serverTemplate.txt").write mern_server_template
    end
    
    # Heroku Procfile
    if !(File.exist?((etc/"chajr/mern/procfileTemplate.txt"))) then
      (etc/"chajr/mern/procfileTemplate.txt").write mern_heroprocfile_template
    end

    # .env
    if !(File.exist?((etc/"chajr/mern/envTemplate.txt"))) then
      (etc/"chajr/mern/envTemplate.txt").write mern_env_template
    end

    # package.json
    if !(File.exist?((etc/"chajr/mern/packageJsonExtension.txt"))) then
      (etc/"chajr/mern/packageJsonExtension.txt").write mern_packageJson_ext
    end

    # routes
    if !(File.exist?((etc/"chajr/mern/routes/apiTktksTemplate.txt"))) then
      (etc/"chajr/mern/routes/apiTktksTemplate.txt").write mern_routes_api_tktks_template
    end
    if !(File.exist?((etc/"chajr/mern/routes/apiUsersTemplate.txt"))) then
      (etc/"chajr/mern/routes/apiUsersTemplate.txt").write mern_routes_api_users_template
    end

    # config
    if !(File.exist?((etc/"chajr/mern/config/dbTemplate.txt"))) then
      (etc/"chajr/mern/config/dbTemplate.txt").write mern_db_template
    end
    if !(File.exist?((etc/"chajr/mern/config/authTemplate.txt"))) then
      (etc/"chajr/mern/config/authTemplate.txt").write mern_auth_config_template
    end
    
    # models
    if !(File.exist?((etc/"chajr/mern/models/tktkTemplate.txt"))) then
      (etc/"chajr/mern/models/tktkTemplate.txt").write mern_tktk_model_template
    end
    if !(File.exist?((etc/"chajr/mern/models/userTemplate.txt"))) then
      (etc/"chajr/mern/models/userTemplate.txt").write mern_user_model_template
    end

    # controllers
    if !(File.exist?((etc/"chajr/mern/controllers/tktksTemplate.txt"))) then
      (etc/"chajr/mern/controllers/tktksTemplate.txt").write mern_controllers_tktks_template
    end
    if !(File.exist?((etc/"chajr/mern/controllers/usersTemplate.txt"))) then
      (etc/"chajr/mern/controllers/usersTemplate.txt").write mern_controllers_users_template
    end
    
    # pages
    if !(File.exist?((etc/"chajr/mern/pages/indexTemplate.txt"))) then
      (etc/"chajr/mern/pages/indexTemplate.txt").write mern_index_template
    end
    if !(File.exist?((etc/"chajr/mern/pages/appTemplate.txt"))) then
      (etc/"chajr/mern/pages/appTemplate.txt").write mern_app_template
    end
    if !(File.exist?((etc/"chajr/mern/pages/loginTemplate.txt"))) then
      (etc/"chajr/mern/pages/loginTemplate.txt").write mern_login_template
    end
    if !(File.exist?((etc/"chajr/mern/pages/signupTemplate.txt"))) then
      (etc/"chajr/mern/pages/signupTemplate.txt").write mern_signup_template
    end
    if !(File.exist?((etc/"chajr/mern/pages/tktkSecretTemplate.txt"))) then
      (etc/"chajr/mern/pages/tktkSecretTemplate.txt").write mern_tktk_secret_page_template
    end
    
    # css
    if !(File.exist?((etc/"chajr/mern/pages/appCssTemplate.txt"))) then
      (etc/"chajr/mern/pages/appCssTemplate.txt").write mern_app_css_template
    end
    if !(File.exist?((etc/"chajr/mern/pages/loginCssTemplate.txt"))) then
      (etc/"chajr/mern/pages/loginCssTemplate.txt").write mern_login_css_template
    end
    if !(File.exist?((etc/"chajr/mern/pages/signupCssTemplate.txt"))) then
      (etc/"chajr/mern/pages/signupCssTemplate.txt").write mern_signup_css_template
    end
    if !(File.exist?((etc/"chajr/mern/components/navBarCssTemplate.txt"))) then
      (etc/"chajr/mern/components/navBarCssTemplate.txt").write mern_navbar_css_template
    end
    
    # components
    if !(File.exist?((etc/"chajr/mern/components/navBarTemplate.txt"))) then
      (etc/"chajr/mern/components/navBarTemplate.txt").write mern_navbar_template
    end
    if !(File.exist?((etc/"chajr/mern/components/sigupFormTemplate.txt"))) then
      (etc/"chajr/mern/components/sigupFormTemplate.txt").write mern_signupform_template
    end
    if !(File.exist?((etc/"chajr/mern/components/tktkTemplate.txt"))) then
      (etc/"chajr/mern/components/tktkTemplate.txt").write mern_tktk_component_template
    end

    #services
    if !(File.exist?((etc/"chajr/mern/services/tktkApiTemplate.txt"))) then
      (etc/"chajr/mern/services/tktkApiTemplate.txt").write mern_tktk_api_template
    end
    if !(File.exist?((etc/"chajr/mern/services/userApiTemplate.txt"))) then
      (etc/"chajr/mern/services/userApiTemplate.txt").write mern_user_api_template
    end
    if !(File.exist?((etc/"chajr/mern/services/tokenTemplate.txt"))) then
      (etc/"chajr/mern/services/tokenTemplate.txt").write mern_token_service_template
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

  # MERN Templates -------------------------------------------------------------

  def mern_server_template; <<~EOS
  const express = require('express');
  const path = require('path');
  const favicon = require('serve-favicon');
  const logger = require('morgan');
  
  const app = express();
  
  require('dotenv').config();
  require('./config/database');
  
  app.use(logger('dev'));
  app.use(express.json());
  
  app.use(favicon(path.join(__dirname, 'build', 'favicon.ico')));
  app.use(express.static(path.join(__dirname, 'build')));
  
  // Put all API routes here
  
  app.use('/api/users', require('./routes/api/users'));
  app.use('/api/tktks', require('./routes/api/tktks'));
  
  // All API routes should be above this comment
  // Sends all other GET requests to build/index.html
  app.get('/*', function(req, res) {
    res.sendFile(path.join(__dirname, 'build', 'index.html'));
  });
  
  // Configure to use port 3001 instead of 3000 during
  // development to avoid collision with React's dev server
  const port = process.env.PORT || 3001;
  
  app.listen(port, function() {
    console.log(`Express backend services running on port ${port}`)
  })
  EOS
  end
  
  def mern_packageJson_ext; <<~EOS
    },
    "proxy": "http://localhost:3001"
  }
  EOS
  end

  def mern_heroprocfile_template; <<~EOS
  web: node server.js
  EOS
  end

  def mern_env_template; <<~EOS
  DATABASE_URL=
  SECRET=
  EOS
  end

  def mern_routes_api_tktks_template; <<~EOS
  const express = require('express');
  const router = express.Router();
  const tktksCtrl = require('../../controllers/tktks');
  
  /*------------------------------ Public Routes ------------------------------*/
  
  router.get('/', checkAuth, tktksCtrl.index);
  
  /*----------------------------- Protected Routes ----------------------------*/
  
  // Process the token for only the routes below
  router.use(require('../../config/auth'));
  router.post('/', checkAuth, tktksCtrl.create);
  
  /*----------------------------- Helper Functions ----------------------------*/
  
  function checkAuth(req, res, next) {
    if (req.user) return next();
    return res.status(401).json({msg: 'Not Authorized'});
  }
  
  module.exports = router;
  EOS
  end

  def mern_routes_api_users_template; <<~EOS
  const express = require('express');
  const router = express.Router();
  const User = require('../../models/user');
  const usersCtrl = require('../../controllers/users');
  
  /*------------------------------ Public Routes ------------------------------*/
  
  router.post('/signup', usersCtrl.signup);
  router.post('/login', usersCtrl.login);
  
  /*----------------------------- Protected Routes ----------------------------*/
  
  
  
  module.exports = router;
  EOS
  end

  def mern_db_template; <<~EOS
  const mongoose = require('mongoose');

  mongoose.connect(process.env.DATABASE_URL, {
    useNewUrlParser: true, 
    useCreateIndex: true, 
    useUnifiedTopology: true
  });
  
  const db = mongoose.connection;
  
  db.once('connected', () => {
    console.log(`Connected to MongoDB ${db.name} on ${db.host}:${db.port}`);
  });
  EOS
  end

  def mern_auth_config_template; <<~EOS
  const jwt = require('jsonwebtoken');
  const SECRET = process.env.SECRET;
  
  module.exports = function(req, res, next) {
    // Check for the token being sent in three different ways
    let token = req.get('Authorization') || req.query.token || req.body.token;
    if (token) {
      // Remove the 'Bearer ' if it was included in the token header
      token = token.replace('Bearer ', '');
      // Check if token is valid and not expired
      jwt.verify(token, SECRET, function(err, decoded) {
        if (err) {
          next(err);
        } else {
          // It's a valid token, so add user to req
          req.user = decoded.user;    
          next();
        }
      });
    } else {
      next();
    }
  };
  EOS
  end

  def mern_tktk_model_template; <<~EOS
  const mongoose = require('mongoose');
  const Schema = mongoose.Schema;
  
  const tktkSchema = new Schema({
    
  }, {
    timestamps: true
  });
  
  module.exports = mongoose.model('Tktk', tktkSchema);
  EOS
  end

  def mern_user_model_template; <<~EOS
  const mongoose = require('mongoose');
  const bcrypt = require('bcrypt');
  
  const SALT_ROUNDS = 6;
  
  const userSchema = new mongoose.Schema({
    name: String,
    email: {type: String, required: true, lowercase: true, unique: true},
    password: String
  }, {
    timestamps: true
  });
  
  userSchema.set('toJSON', {
    transform: function(doc, ret) {
      // remove the password property when serializing doc to JSON
      delete ret.password;
      return ret;
    }
  });
  
  userSchema.pre('save', function(next) {
    // 'this' will be set to the current document
    const user = this;
    if (!user.isModified('password')) return next();
    // password has been changed - salt and hash it
    bcrypt.hash(user.password, SALT_ROUNDS, function(err, hash) {
      if (err) return next(err);
      // replace the user provided password with the hash
      user.password = hash;
      next();
    });
  });
  
  userSchema.methods.comparePassword = function(tryPassword, cb) {
    // 'this' represents the document that you called comparePassword on
    bcrypt.compare(tryPassword, this.password, function(err, isMatch) {
      if (err) return cb(err);
      cb(null, isMatch);
    });
  };
  
  module.exports = mongoose.model('User', userSchema);
  EOS
  end

  def mern_controllers_tktks_template; <<~EOS
  var Tktk = require('../models/tktk');

  module.exports = {
    index,
    create
  };
  
  async function index(req, res) {
    try{
        const tktks = await Tktk.find({});
        res.status(200).json(tktks);
    }
    catch(err){
        res.status(500).json(err);
    }
  }
  
  async function create(req, res) {
    console.log('user: ', req.user)
    try {
      const tktk = await Tktk.create(req.body);
      res.status(201).json(tktk);
    }
    catch(err){
      res.status(500).json(err);
    }
  }
  EOS
  end

  def mern_controllers_users_template; <<~EOS
  const User = require('../models/user');
  const jwt = require('jsonwebtoken');
  const SECRET = process.env.SECRET;
  
  module.exports = {
    signup,
    login
  };
  
  async function signup(req, res) {
    const user = new User(req.body);
    try {
      await user.save();
      const token = createJWT(user);
      res.json({ token });
    } catch (err) {
      // Probably a duplicate email
      res.status(400).json(err);
    }
  }
  
  async function login(req, res) {
    try {
      const user = await User.findOne({email: req.body.email});
      if (!user) return res.status(401).json({err: 'bad credentials'});
      user.comparePassword(req.body.pw, (err, isMatch) => {
        if (isMatch) {
          const token = createJWT(user);
          res.json({token});
        } else {
          return res.status(401).json({err: 'bad credentials'});
        }
      });
    } catch (err) {
      return res.status(401).json(err);
    }
  }
  
  /*----- Helper Functions -----*/
  
  function createJWT(user) {
    return jwt.sign(
      {user}, // data payload
      SECRET,
      {expiresIn: '24h'}
    );
  }
  EOS
  end

  def mern_index_template; <<~EOS
  import React from 'react';
  import ReactDOM from 'react-dom';
  import './index.css';
  import App from './pages/App/App';
  import * as serviceWorker from './serviceWorker';
  import { BrowserRouter as Router, Route } from 'react-router-dom';
  
  ReactDOM.render(
    <Router>
      <Route component={App}/>
    </Router>,
    document.getElementById('root')
  );
  
  // If you want your app to work offline and load faster, you can change
  // unregister() to register() below. Note this comes with some pitfalls.
  // Learn more about service workers: http://bit.ly/CRA-PWA
  serviceWorker.unregister();
  EOS
  end

  def mern_app_template; <<~EOS
  import React, { Component } from 'react';
  import './App.css';
  import { Route, Switch, Redirect } from 'react-router-dom';
  import SignupPage from '../SignupPage/SignupPage';
  import LoginPage from '../LoginPage/LoginPage';
  import TktksSecretPage from '../TktksSecretPage/TktksSecretPage'
  import * as tktkAPI from '../../services/tktk-api';
  import * as userAPI from '../../services/user-api';
  import Tktk from '../../components/Tktk/Tktk'
  import NavBar from '../../components/NavBar/NavBar'
  
  class App extends Component {
    state = {
      // Initialize user if there's a token, otherwise null
      user: userAPI.getUser(),
      tktks: null
    };
  
    /*--------------------------- Callback Methods ---------------------------*/
  
    handleLogout = () => {
      userAPI.logout();
      this.setState({ user: null });
    }
  
    handleSignupOrLogin = () => {
      this.setState({user: userAPI.getUser()});
    }
  
    /*-------------------------- Lifecycle Methods ---------------------------*/
  
    async componentDidMount() {
      const tktks = await tktkAPI.index();
      this.setState({ tktks });
    }
  
    /*-------------------------------- Render --------------------------------*/
  
    render() {
      return (
        <div className="App">
          <h1>Welcome to Tktk</h1>
          <NavBar
            user={this.state.user}
            handleLogout={this.handleLogout}
          />
          <Switch>
            <Route exact path='/login' render={({ history }) => 
              <LoginPage
                history={history}
                handleSignupOrLogin={this.handleSignupOrLogin}
              />
            }/>
            <Route exact path='/signup' render={({ history }) => 
              <SignupPage
                history={history}
                handleSignupOrLogin={this.handleSignupOrLogin}
              />
            }/>
            <Route exact path='/tktk-secret' render={() => 
              userAPI.getUser() ? 
                <TktksSecretPage />
              :
                <Redirect to='/login'/>
            }/>
            <Route exact path='/' render={() =>
              <Tktk />
            }/>
          </Switch>
        </div>
      );
    }
  }
  
  export default App;
  EOS
  end

  def mern_app_css_template; <<~EOS
  .App {
    display: flex;
    flex-flow: column nowrap;
    justify-content: center;
    align-items: center;
    margin-bottom: 50px;
  }
  EOS
  end
  
  def mern_login_template; <<~EOS
  import React, { Component } from 'react';
  import { Link } from 'react-router-dom';
  import './LoginPage.css';
  import userAPI from '../../services/user-api';
  
  class LoginPage extends Component {
    
    state = {
      email: '',
      pw: ''
    };
  
    handleChange = (e) => {
      this.setState({
        // Using ES2015 Computed Property Names
        [e.target.name]: e.target.value
      });
    }
  
    handleSubmit = async (e) => {
      e.preventDefault();
      try {
        await userAPI.login(this.state);
        // Let <App> know a user has signed up!
        this.props.handleSignupOrLogin();
        // Successfully signed up - show GamePage
        this.props.history.push('/');
      } catch (err) {
        // Use a modal or toast in your apps instead of alert
        alert('Invalid Credentials!');
      }
    }
  
    render() {
      return (
        <div className="LoginPage">
          <header>Log In</header>
          <form onSubmit={this.handleSubmit} >
            <div>
              <input 
                type="email" 
                placeholder="Email"
                value={this.state.email} 
                name="email" 
                onChange={this.handleChange} 
              />
            </div>
            <div>
              <input 
                type="password"
                placeholder="Password" 
                value={this.state.pw} 
                name="pw" 
                onChange={this.handleChange} 
              />
            </div>
            <div>
              <button>Log In</button>
              &nbsp;&nbsp;&nbsp;
              <Link to='/'>Cancel</Link>
            </div>
          </form>
        </div>
      );
    }
  }
  
  export default LoginPage;
  EOS
  end

  def mern_login_css_template; <<~EOS
  .LoginPage {
    display: flex;
    flex-flow: column nowrap;
    justify-content: center;
    align-items: center;
    margin-bottom: 50px;
  }
  EOS
  end
  
  def mern_signup_template; <<~EOS
  import React, { Component } from 'react';
  import SignupForm from '../../components/SignupForm/SignupForm';
  import './SignupPage.css';
  
  class SignupPage extends Component {
    state = {
      message: ''
    }
  
    updateMessage = (msg) => {
      this.setState({message: msg});
    }
  
    render() {
      return (
        <div className='SignupPage'>
          <SignupForm {...this.props} updateMessage={this.updateMessage} />
          <p>{this.state.message}</p>
        </div>
      );
    }
  }
  
  export default SignupPage;
  EOS
  end
  
  def mern_signup_css_template; <<~EOS
  .SignupPage {
    display: flex;
    flex-flow: column nowrap;
    justify-content: center;
    align-items: center;
    margin-bottom: 50px;
  }
  EOS
  end

  def mern_tktk_secret_page_template; <<~EOS
  import React from 'react';

  const TktksSecretPage = () => {
    return (
      <React.Fragment>
        <h3>This is the Secret Tktk page!</h3>
        <p>It is located at src/pages/TktkSecretPage/TktkSecretPage.jsx</p>
        <p>If you can view this page, it is likely that you have successfully logged a user in!</p>
        <h3>🥳 🥳 Congrats 🥳 🥳</h3>
        <p>You could use this page as a base to start working from or delete it for a fresh start. Happy building!</p>
      </React.Fragment>
    );
  }
   
  export default TktksSecretPage;
  EOS
  end

  def mern_navbar_template; <<~EOS
  import React from 'react';
  import { Link } from 'react-router-dom';
  import './NavBar.css';
  
  const NavBar = (props) => {
    let nav = props.user ?
      <div>
        <Link to='/tktk-secret' className='NavBar-link'>Click here to check authentication!</Link>
        &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
        <Link to='' className='NavBar-link' onClick={props.handleLogout}>Logout</Link>
        &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
        <span className='NavBar-welcome'>Welcome, {props.user.name}</span>
      </div>
      :
      <div>
        <Link to='/login' className='NavBar-link'>Login</Link>
        &nbsp;&nbsp;|&nbsp;&nbsp;
        <Link to='/signup' className='NavBar-link'>Sign up</Link>
      </div>;
  
    return (
      <div className='NavBar'>
        {nav}
      </div>
    );
  };
  
  export default NavBar;
  EOS
  end
  
  def mern_navbar_css_template; <<~EOS
  .NavBar {
    display: flex;
    justify-content: center;
    margin: 0 0 20px;
  }
  
  .NavBar-link {
    margin: 0 10px;
  }
  
  .NavBar-welcome {
    color: grey;
  }
  EOS
  end

  def mern_signupform_template; <<~EOS
  import React, { Component } from 'react';
  import { Link } from 'react-router-dom';
  import * as userAPI from '../../services/user-api';
  
  class SignupForm extends Component {
  
    state = {
      name: '',
      email: '',
      password: '',
      passwordConf: ''
    };
  
    handleChange = (e) => {
      this.props.updateMessage('');
      this.setState({
        // Using ES2015 Computed Property Names
        [e.target.name]: e.target.value
      });
    }
  
    handleSubmit = async (e) => {
      e.preventDefault();
      try {
        await userAPI.signup(this.state);
        // Let <App> know a user has signed up!
        this.props.handleSignupOrLogin();
        // Successfully signed up - show GamePage
        this.props.history.push('/');
      } catch (err) {
        // Invalid user data (probably duplicate email)
        this.props.updateMessage(err.message);
      }
    }
  
    isFormInvalid() {
      return !(this.state.name && this.state.email && this.state.password === this.state.passwordConf);
    }
  
    render() {
      return (
        <div>
          <header>Sign Up</header>
          <form onSubmit={this.handleSubmit} >
            <div>
              <input 
                type="text"
                placeholder="Name" 
                value={this.state.name} 
                name="name" 
                onChange={this.handleChange} 
              />
            </div>
            <div>
              <input 
                type="email"
                placeholder="Email" 
                value={this.state.email} 
                name="email" 
                onChange={this.handleChange}
              />
            </div>
            <div>
              <input 
                type="password" 
                placeholder="Password" 
                value={this.state.password} 
                name="password" 
                onChange={this.handleChange} 
              />
            </div>
            <div className="form-group">
              <input 
                type="password" 
                placeholder="Confirm Password" 
                value={this.state.passwordConf} 
                name="passwordConf" 
                onChange={this.handleChange} 
              />
            </div>
            <div>
              <button 
                className="btn btn-default" 
                disabled={this.isFormInvalid()}       
              >
                Sign Up
              </button>
              &nbsp;&nbsp;
              <Link to='/'>Cancel</Link>
            </div>
          </form>
        </div>
      );
    }
  }
  
  export default SignupForm;
  EOS
  end

  def mern_tktk_component_template; <<~EOS
  import React from 'react';

  const Tktk = () => {
    return (
      <React.Fragment>
        <h3>This is the Tktk Component.</h3>
        <p>It is located at src/components/Tktk/Tktk.jsx</p>
      </React.Fragment>
    );
  }
   
  export default Tktk;
  EOS
  end

  def mern_tktk_api_template; <<~EOS
  import tokenService from './tokenService';

  const BASE_URL = '/api/tktks/';
  
  export default {
    index,
    create
  };
  
  function index() {
    const options = {
      method: 'GET',
      headers: {
        'Authorization': 'Bearer ' + tokenService.getToken()
      }
    };
    return fetch(BASE_URL, options).then(res => res.json());
  }
  
  function create(score) {
    const options = {
      method: 'POST',
      headers: {
        'Content-type': 'application/json',
        // Add this header - don't forget the space after Bearer
        'Authorization': 'Bearer ' + tokenService.getToken()
      },
      body: JSON.stringify(score)
    };
    return fetch(BASE_URL, options).then(res => res.json());
  }
  EOS
  end

  def mern_user_api_template; <<~EOS
  import tokenService from './tokenService';

  const BASE_URL = '/api/users/';
  
  function signup(user) {
    return fetch(BASE_URL + 'signup', {
      method: 'POST',
      headers: new Headers({'Content-Type': 'application/json'}),
      body: JSON.stringify(user)
    })
    .then(res => {
      if (res.ok) return res.json();
      // Probably a duplicate email
      throw new Error('Email already taken!');
    })
    // Parameter destructuring!
    .then(({token}) => tokenService.setToken(token));
    // The above could have been written as
    //.then((token) => token.token);
  }
  
  function getUser() {
    return tokenService.getUserFromToken();
  }
  
  function logout() {
    tokenService.removeToken();
  }
  
  function login(creds) {
    return fetch(BASE_URL + 'login', {
      method: 'POST',
      headers: new Headers({'Content-Type': 'application/json'}),
      body: JSON.stringify(creds)
    })
    .then(res => {
      // Valid login if we have a status of 2xx (res.ok)
      if (res.ok) return res.json();
      throw new Error('Bad Credentials!');
    })
    .then(({token}) => tokenService.setToken(token));
  }
  
  export default {
    signup, 
    getUser,
    logout,
    login
  };
  EOS
  end

  def mern_token_service_template; <<~EOS
  function setToken(token) {
    if (token) {
      localStorage.setItem('token', token);
    } else {
      localStorage.removeItem('token');
    }
  }
  
  function getToken() {
    let token = localStorage.getItem('token');
    if (token) {
      // Check if expired, remove if it is
      const payload = JSON.parse(atob(token.split('.')[1]));
      // JWT's exp is expressed in seconds, not milliseconds, so convert
      if (payload.exp < Date.now() / 1000) {
        localStorage.removeItem('token');
        token = null;
      }
    }
    return token;
  }
  
  function getUserFromToken() {
    const token = getToken();
    return token ? JSON.parse(atob(token.split('.')[1])).user : null;
  }
  
  function removeToken() {
    localStorage.removeItem('token');
  }
  
  export default {
    setToken,
    getToken,
    removeToken,
    getUserFromToken
  };
  EOS
  end


  # MEN Templates --------------------------------------------------------------
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

    require('dotenv').config();

    const indexRouter = require("./routes/index");
    const tktksRouter = require("./routes/tktks");
    const usersRouter = require('./routes/users');

    require("./config/database");

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