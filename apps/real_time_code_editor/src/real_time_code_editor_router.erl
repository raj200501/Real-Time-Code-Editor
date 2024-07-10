-module(real_time_code_editor_router).
-export([dispatch/0]).

dispatch() ->
    cowboy_router:compile([
        {'_', [
            {"/", real_time_code_editor_handler, []},
            {"/documents", code_controller, []},
            {"/ws/code", code_socket, []}
        ]}
    ]).
