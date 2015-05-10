function pushToHistory(currentLocation) {
    console.log("setupPush called");
    window.history.pushState({url: currentLocation}, document.title, currentLocation);
    setupPopListener();
}

function setupPopListener() {
    $(window).off('popstate');
    $(window).on('popstate', function (event) {
        var url = null;
        if (event.originalEvent.state && event.originalEvent.state.url) {
            console.log("valid");
            url = event.originalEvent.state.url
        } else {
            console.log("invalid");
            url = '/'
        }
        $.get(url);

    });
}