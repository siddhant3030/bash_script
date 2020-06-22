{application, 'simple_rest', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['rest_time_handler','simple_rest_app','simple_rest_sup']},
	{registered, [simple_rest_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{mod, {simple_rest_app, []}},
	{env, []}
]}.