-module(code_controller).
-behaviour(cowboy_rest).

-export([init/2, allowed_methods/2, content_types_provided/2, content_types_accepted/2, handle_get/2, handle_post/2, handle_put/2, handle_delete/2]).

init(Req, State) ->
    {cowboy_rest, Req, State}.

allowed_methods(Req, State) ->
    {[<<"GET">>, <<"POST">>, <<"PUT">>, <<"DELETE">>], Req, State}.

content_types_provided(Req, State) ->
    {[{<<"application/json">>, handle_get}], Req, State}.

content_types_accepted(Req, State) ->
    {[{<<"application/json">>, handle_post}, {<<"application/json">>, handle_put}, {<<"application/json">>, handle_delete}], Req, State}.

handle_get(Req, State) ->
    %% Retrieve documents
    {ok, Req}.

handle_post(Req, State) ->
    %% Create document
    {ok, Req}.

handle_put(Req, State) ->
    %% Update document
    {ok, Req}.

handle_delete(Req, State) ->
    %% Delete document
    {ok, Req}.
