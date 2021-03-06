-module(simple_rest_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    Dispatch = cowboy_router:compile([
        {'_', [
               {"/", rest_time_handler, []}
              ]}
    ]),
    {ok, _} = cowboy:start_clear(my_http_listener, 100,
        [{port, 8080}],
        #{env => #{dispatch => Dispatch}}
    ),
    simple_rest_sup:start_link().

stop(_State) ->
	ok.
