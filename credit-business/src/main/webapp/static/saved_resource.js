
(function () {
    // window.addEventListener("load", function () {
    if (window.location.pathname !== '/') {
        if (!window.location.origin.match(/bank-static/)) {
            if (window.navigator.vendor !== 'Apple Computer, Inc.') {
                install({
                    onUpdating: function onUpdating() {
                        console.log('SW Event:', 'onUpdating');
                    },
                    onUpdateReady: function onUpdateReady() {
                        console.log('SW Event:', 'onUpdateReady');
                        // Apply update when available
                        applyUpdate();
                    },
                    onUpdated: function onUpdated() {
                        console.log('SW Event:', 'onUpdated');
                        // Reload immediately when updated
                        //window.location.reload();
                    }
                });
            }
        }
    }

    function hasSW() {

        return 'serviceWorker' in navigator && (
            window.location.protocol === 'https:' ||
            window.location.hostname === 'localhost' ||
            window.location.hostname.indexOf('127.') === 0
        );

    }
    // 是否是行员A
    function isBankAAPP () {
        var ua = window.navigator.userAgent.toUpperCase()
        if (/BankA/i.test(ua)) {
            return true
        } else {
            return false
        }
    }
    function install(options) {
        options || (options = {});
        var tmpOrigin = window.location.origin + "/sw.js";
        var mainfest = document.getElementsByTagName("html")[0].getAttribute("manifest")
        if (mainfest || isBankAAPP() || window.location.origin==='https://b.pingan.com' || window.location.origin==='https://bank.pingan.com.cn') {
            if (navigator.serviceWorker.getRegistration) {
                navigator.serviceWorker.getRegistration(tmpOrigin).then(function (registration) {
                    if (registration && registration.unregister) {
                        registration.unregister().then(function (isUnRegistered) {
                            if (isUnRegistered) {
                                console.log("[SW]: UnRegistration  succeeded.")
                                window.location.reload()
                            } else {
                                console.error("[SW]: UnRegistration failed.")
                            }
                        })
                    }
                }).catch(function (e) {
                    console.error("[SW]: UnRegistration failed with. " + e)
                })
            }
        } else {

            if (hasSW()) {
                var registration = navigator.serviceWorker
                    .register(
                        tmpOrigin, {
                            scope: "/",
                        }
                    );


                var handleUpdating = function (registration) {
                    var sw = registration.installing || registration.waiting;
                    var ignoreInstalling;
                    var ignoreWaiting;

                    // No SW or already handled
                    if (!sw || sw.onstatechange) return;

                    var stateChangeHandler;

                    // Already has SW
                    if (registration.active) {
                        onUpdateStateChange();
                        stateChangeHandler = onUpdateStateChange;
                    } else {
                        onInstallStateChange();
                        stateChangeHandler = onInstallStateChange;
                    }

                    ignoreInstalling = true;
                    if (registration.waiting) {
                        ignoreWaiting = true;
                    }

                    sw.onstatechange = stateChangeHandler;

                    function onUpdateStateChange() {
                        switch (sw.state) {
                            case 'redundant':
                                {
                                    sendEvent('onUpdateFailed');
                                    sw.onstatechange = null;
                                }
                                break;

                            case 'installing':
                                {
                                    if (!ignoreInstalling) {
                                        sendEvent('onUpdating');
                                    }
                                }
                                break;

                            case 'installed':
                                {
                                    if (!ignoreWaiting) {
                                        sendEvent('onUpdateReady');
                                    }
                                }
                                break;

                            case 'activated':
                                {
                                    sendEvent('onUpdated');
                                    sw.onstatechange = null;
                                }
                                break;
                        }
                    }

                    function onInstallStateChange() {
                        switch (sw.state) {
                            case 'redundant':
                                {
                                    // Failed to install, ignore
                                    sw.onstatechange = null;
                                }
                                break;

                            case 'installing':
                                {
                                    // Installing, ignore
                                }
                                break;

                            case 'installed':
                                {
                                    // Installed, wait activation
                                }
                                break;

                            case 'activated':
                                {
                                    sendEvent('onInstalled');
                                    sw.onstatechange = null;
                                }
                                break;
                        }
                    }
                };

                var sendEvent = function (event) {
                    if (typeof options[event] === 'function') {
                        options[event]({
                            source: 'ServiceWorker'
                        });
                    }
                };

                registration.then(function (reg) {
                    // WTF no reg?
                    if (!reg) return;

                    // Installed but Shift-Reloaded (page is not controller by SW),
                    // update might be ready at this point (more than one tab opened).
                    // Anyway, if page is hard-reloaded, then it probably already have latest version
                    // but it's not controlled by SW yet. Applying update will claim this page
                    // to be controlled by SW. Maybe set flag to not reload it?
                    // if (!navigator.serviceWorker.controller) return;

                    handleUpdating(reg);
                    reg.onupdatefound = function () {
                        handleUpdating(reg);
                    };
                }).catch(function (err) {
                    sendEvent('onError');
                    return Promise.reject(err);
                });
                return;
            }
        }

    }

    function applyUpdate(callback, errback) {

        if (hasSW()) {
            navigator.serviceWorker.getRegistration().then(function (registration) {
                if (!registration || !registration.waiting) {
                    errback && errback();
                    return;
                }

                registration.waiting.postMessage({
                    action: 'skipWaiting'
                });

                callback && callback();
            });

            return;
        }
    }

    function update() {

        if (hasSW()) {
            navigator.serviceWorker.getRegistration().then(function (registration) {
                if (!registration) return;
                return registration.update();
            });
        }
    }
    // setInterval(update, 3600000);

    // })
})();