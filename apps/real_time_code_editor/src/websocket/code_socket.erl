-module(code_socket).
-behaviour(cowboy_websocket).

-export([init/2, websocket_handle/3, websocket_info/3, terminate/3]).

init(Req, State) ->
    {cowboy_websocket, Req, State}.

websocket_handle({text, Msg}, Req, State) ->
    %% Handle incoming message
    {reply, {text, Msg}, Req, State}.

websocket_info(_Info, Req, State) ->
    {noreply, Req, State}.

terminate(_Reason, _Req, _State) ->
    ok.
