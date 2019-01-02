const config = {
  env: {
      browser: true,
      es6: true,
      node: true
  },
  parserOptions: {
      parser: 'babel-eslint',
      sourceType: 'module',
      allowImportExportEverywhere: true,
  },
  extends: [
      'airbnb-base',
  ],
  plugins: [],
  rules: {
    'indent': ['error', 2],
    'quotes': ['error', 'single'],
    'import/prefer-default-export': 'off',
    'func-names': ["error", "never"],
    'no-param-reassign': 0,
  }
};

module.exports = config;
