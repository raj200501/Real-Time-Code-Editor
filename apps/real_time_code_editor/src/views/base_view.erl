-module(base_view).
-export([render/1]).

render(Content) ->
    io:format("Content-type: text/html~n~n", []),
    io:format("<html><head><title>RealTime Code Editor</title></head><body>~s</body></html>", [Content]).
