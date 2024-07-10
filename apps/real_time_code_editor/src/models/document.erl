-module(document).

-export([new/2, get/1, update/2, delete/1, to_json/1]).

-record(document, {id, content}).

new(Id, Content) ->
    #document{id = Id, content = Content}.

get(Id) ->
    %% Retrieve document by Id
    {ok, Document}.

update(Id, DocumentData) ->
    %% Update document
    {ok, UpdatedDocument}.

delete(Id) ->
    %% Delete document
    {ok}.

to_json(Document) ->
    %% Convert document to JSON
    {ok, JSON}.
