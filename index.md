---
layout: single
date: 2020-10-19 19:42:22 +0530
title: 'StompJs Family'
author_profile: true
---

These libraries provide [STOMP] over [Websocket] connectivity for web browsers or other Javascript-based environments.

[stompjs] is the core Javascript library. [rx-stomp] is a wrapper that exposes functionality as [RxJS] primitives. If you are already using RxJS in your project or are familiar with it, check out [rx-stomp].

## Getting started

Please try the following guides:

- [Using StompJS] - a step-by-step guide.
- [Using rx-stomp with Angular] - Preferred, originally written for Angular13,
  should work with Angular 7+.
- [Using ng2-stompjs with Angular] - Deprecated, originally written for Angular7,
  last tested with Angular 9.
- Guide to [Connection status in ng2-stompjs].

Samples:

- [Samples](https://github.com/stomp-js/samples/) for [stompjs] and [rx-stomp].
- [Sample](https://github.com/stomp-js/rx-stomp-angular) for [rx-stomp] with Angular 7+.

[API documentation](/api-docs/latest/) for NPM released versions.

## Upgrading

- [Migrate ng2-stompjs to rx-stomp] - migrate Angular projects to use [rx-stomp].
- [Upgrading to stompjs@6, rx-stomp@1, ng2-stompjs@8] - update from
  stompjs@v5, rx-stomp@0.x, ng2-stompjs@7.
- [Upgrading StompJS] to update to stompjs@v5 from any of the older versions.
- [Upgrading to ng2-stompjs@7] for any of the older versions.

## Other topics

- Read the [FAQs]. These cover varied topics.
- List of [Pollyfills] - you may need for some environments.
- Set of additional notes for using these libraries with [SockJS].
- One of my favorites, but not widely used, exceptional support for
  [Remote Procedure Calls].
- An article devoted to specific issues posed by [React Native].

[stomp]: https://stomp.github.io/index.html
[websocket]: https://developer.mozilla.org/en-US/docs/Web/API/WebSocket
[rxjs]: https://github.com/ReactiveX/RxJS
[stompjs]: https://github.com/stomp-js/stompjs
[rx-stomp]: https://github.com/stomp-js/rx-stomp
[ng2-stompjs]: https://github.com/stomp-js/ng2-stompjs

[Pollyfills]: {% link _posts/2018-06-28-pollyfils-for-stompjs-v5.md %}
[Using StompJS]: {% link _posts/2018-06-29-using-stompjs-v5.md %}
[Upgrading StompJS]: {% link _posts/2018-09-08-upgrading-stompjs.md %}
[SockJS]: {% link _posts/2018-09-10-using-stomp-with-sockjs.md %}
[Remote Procedure Calls]: {% link _posts/2018-10-12-remote-procedure-call.md %}
[Using rx-stomp with Angular]: {% link _posts/2022-03-02-rx-stomp-with-angular.md %}
[Using ng2-stompjs with Angular]: {% link _posts/2018-11-04-ng2-stomp-with-angular7.md %}
[Upgrading to ng2-stompjs@7]: {% link _posts/2018-11-05-migrate-ng2-stompjs-v7.md %}
[Connection status in ng2-stompjs]: {% link _posts/2018-12-18-connection-status-ng2-stompjs.md %}
[FAQs]: {% link _posts/2019-05-20-faqs.html %}
[React Native]: {% link _posts/2019-06-10-react-native-additional-notes.md %}
[Upgrading to stompjs@6, rx-stomp@1, ng2-stompjs@8]: {% link _posts/2020-10-21-upgrading-to-stompjs-6-rx-stomp-1.md %}
[Migrate ng2-stompjs to rx-stomp]: {% link _posts/2022-03-03-ng2-stompjs-to-rx-stomp.md %}
