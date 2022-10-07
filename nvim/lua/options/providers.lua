local g = vim.g

g.loaded_perl_provider = 0
g.loaded_python_provider = 0

g.python_host_skip_check = 1
g.python3_host_skip_check = 1

if vim.fn.executable("python3") == 1 then
	g.python3_host_prog = vim.fn.exepath("python3")
else
	g.loaded_python3_provider = 0
end

if vim.fn.executable("neovim-node-host") == 1 then
	g.node_host_prog = vim.fn.exepath("neovim-node-host")
else
	g.loaded_node_provider = 0
end

if vim.fn.executable("neovim-ruby-host") == 1 then
	g.ruby_host_prog = vim.fn.exepath("neovim-ruby-host")
else
	g.loaded_ruby_provider = 0
end
