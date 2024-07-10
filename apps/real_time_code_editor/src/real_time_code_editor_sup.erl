-module(real_time_code_editor_sup).
-behaviour(supervisor).

%% API
-export([start_link/0]).
-export([init/1]).

%% Supervisor callbacks
start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init([]) ->
    Children = [
        {cowboy_clear, {cowboy, start_clear, [
            {env, [
                {dispatch, real_time_code_editor_router:dispatch()}
            ]}
        ]}, permanent, 5000, worker, [cowboy]}
    ],
    {ok, {{one_for_one, 1, 5}, Children}}.
