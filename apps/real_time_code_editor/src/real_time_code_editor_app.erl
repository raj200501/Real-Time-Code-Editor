-module(real_time_code_editor_app).
-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    real_time_code_editor_sup:start_link().

stop(_State) ->
    ok.
