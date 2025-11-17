module.exports = {
  apps: [
    {
      name: 'malaka-cat',
      script: 'dist/app.js',

      instances: 'max',
      exec_mode: 'cluster',
      watch: false,

      env: {
        NODE_ENV: 'production',
        PORT: 3000,
      },
    },
  ],
};