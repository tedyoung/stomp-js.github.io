---
layout: single
title: 'StompJs v5+: Polyfills'
date: 2018-06-29 07:59:22 +0530
categories: guide stompjs rx-stomp ng2-stompjs
toc: true
redirect_from:
- /guide/stompjs/rx-stomp/ng2-stompjs/2018/06/28/pollyfils-for-stompjs-v5.html
- /guide/stompjs/rx-stomp/ng2-stompjs/2018/06/29/pollyfils-for-stompjs-v5.html
- /guide/stompjs/rx-stomp/ng2-stompjs/2018/06/30/pollyfils-for-stompjs-v5.html
---

This guide covers critical dependencies and polyfills for version 5+ of `@stomp/stompjs`;
which is internally used by all versions of `@stomp/rx-stomp` and version 7+
of `@stomp/ng2-stompjs`.

## Critical dependency

StompJs v5+ uses newer Javascript features. Few of these can be polyfilled in older
browsers.
However [Uint8Array](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint8Array)
([Browser Support](https://caniuse.com/#feat=typedarrays))
is critically needed and not possible to be efficiently polyfilled (notably in IE9 or lower).
If you need to support any browser that does not have native support for Uint8Array
please continue using version 4 of this library.

## Older Microsoft Browsers

**The latest version of Edge does not need any polyfills.**

### TextEncoder/TextDecoder - IE and older Edge

- [TextEncoder](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder)
  and
  [TextDecoder](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder) -
  [Browser Support](https://caniuse.com/#search=textencoder)
  These are not supported by any older versions of MicroSoft browsers (supported by latest Edge).
- These will need to be polyfilled from `npm` package `text-encoding`. A simple approach:
  ```html
  <script src="https://cdn.jsdelivr.net/npm/text-encoding@0.6.4/lib/encoding.min.js"></script>
  ```

### Object.assign - IE

- [Object.assign](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/assign).
  ([Browser Support](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/assign#Browser_compatibility))
  It is not supported by IE (supported by Edge).
- It will need to be polyfilled from `npm` package `es6-object-assign`. A simple approach:
  ```html
  <script src="https://cdn.jsdelivr.net/npm/es6-object-assign@1.1.0/dist/object-assign-auto.min.js"></script>
  ```

## In NodeJS

### WebSocket

There are two alternate libraries `websocket` and `ws` which have been reported to work.

#### websocket

- Add `websocket` npm module:

  ```bash
  $ npm install websocket
  ```

- Require the module and expose it through `global`

  ```javascript
  Object.assign(global, { WebSocket: require('websocket').w3cwebsocket });
  ```

#### ws

- Instead of `websocket` lib `ws` has also been reported to work.
  See: [stompjs/issues/28](https://github.com/stomp-js/stompjs/issues/28).
- Add `ws` npm module:

  ```bash
  $ npm install ws
  ```

- Require the module and expose it through `global`

  ```javascript
  Object.assign(global, { WebSocket: require('ws') });
  ```

### TextEncoder/TextDecoder

- Node JS v11 (tested with v11.2.0) has `TextEncoder`/`TextDecoder` built-in. See:
  [https://nodejs.org/api/util.html#util_class_util_textencoder](https://nodejs.org/api/util.html#util_class_util_textencoder)
- For older NodeJS, you need to install `text-encoding`
  ```bash
  $ npm install text-encoding
  ```
- Add the following:

  ```javascript
  // These have been added in NodeJS v11, so good idea is to check first
  if (typeof TextEncoder !== 'function') {
    const TextEncodingPolyfill = require('text-encoding');
    TextEncoder = TextEncodingPolyfill.TextEncoder;
    TextDecoder = TextEncodingPolyfill.TextDecoder;
  }
  ```

## In React Native

### TextEncoder/TextDecoder

- React Native makes it deceptive.
  When an application is executed in debug mode, it works, as it is executed on an actual browser
  where TextEncoder/TextDecoder is available.
  However, when executed in production mode, it fails as TextEncoder/TextDecoder is not available.
- Please install `text-encoding`
  ```bash
  $ npm install text-encoding
  ```
- Add the following to your `index.js` or `App.js`:

  ```javascript
  import * as encoding from 'text-encoding';
  ```

- There are additional issues with React Native in some device/version combinations. Please see:
  [React Native - Additional Notes](/workaround/stompjs/rx-stomp/ng2-stompjs/react-native-additional-notes.html)
