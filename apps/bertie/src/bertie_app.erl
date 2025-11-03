%%%-------------------------------------------------------------------
%% @doc bertie public API
%% @end
%%%-------------------------------------------------------------------

-module(bertie_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    bertie_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
