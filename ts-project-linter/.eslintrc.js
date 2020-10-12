module.exports = {
    parser: '@typescript-eslint/parser',
    extends: [
      'plugin:react/recommended',
      'plugin:@typescript-eslint/recommended',
      'plugin:prettier/recommended',
      'prettier/@typescript-eslint',
    ],
    parserOptions: {
      ecmaVersion: 2018,
      sourceType: 'module',
      ecmaFeatures: {
        jsx: true,
      },
    },
    rules: {
      '@typescript-eslint/camelcase': 'off',
      '@typescript-eslint/no-use-before-define': 'warn',
      "@typescript-eslint/explicit-function-return-type": ['warn', {
        "allowExpressions": true,
        "allowTypedFunctionExpressions": true
      }],
      'no-console': 'error',
      'prefer-const': 'off',
      'react/prop-types': 'off',
      'react/display-name': 'off',
      'react/jsx-props-no-spreading': 1,
    },
    settings: {
      react: {
        version: 'detect',
      },
      'import/parsers': {
        '@typescript-eslint/parser': ['.ts', '.tsx'],
      },
      'import/resolver': {
        typescript: {},
      },
    },
  };
  