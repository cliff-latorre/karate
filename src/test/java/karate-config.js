function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    username: 'admin',
    password: 'adminpassword',
    _url: 'localhost:8080'
  }
  if (env == 'local') {
    // customize
    // e.g. config.foo = 'bar';
    config.username = 'author';
    config.password = 'authorpassword';
  } else if (env == 'dev') {
    // customize
    config.username = 'user';
    config.password = 'userpassword';
  }else if (env == 'certi') {
       // customize
       config.username = 'cert';
       config.password = 'certpassword';
     }
  return config;
}
