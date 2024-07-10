-module(code_view).
-export([render_index/1, render_show/1, render_create/1, render_edit/1]).

render_index(Documents) ->
    %% Render list of documents
    {ok, Content},
    base_view:render(Content).

render_show(Document) ->
    %% Render single document
    {ok, Content},
    base_view:render(Content).

render_create() ->
    %% Render document creation form
    {ok, Content},
    base_view:render(Content).

render_edit(Document) ->
    %% Render document editing form
    {ok, Content},
    base_view:render(Content).
