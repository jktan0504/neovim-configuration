return {
	-- tools
	{
		"mason-org/mason.nvim",
		opts = function(_, opts)
			opts.ensure_installed = opts.ensure_installed or {}
			vim.list_extend(opts.ensure_installed, {
				-- Lua
				"stylua",
				"selene",
				"luacheck",

				-- Shell
				"shellcheck",
				"shfmt",

				-- Web Development (JS/TS/React/Next.js)
				"tailwindcss-language-server",
				"typescript-language-server",
				"eslint-lsp",
				"prettier",
				"css-lsp",
				"html-lsp",
				"emmet-ls",

				-- PHP/Laravel
				"intelephense",
				"php-cs-fixer",
				"phpstan",
				"blade-formatter", -- Laravel Blade templates

				-- Python
				"pyright",
				"ruff",
				"black",
				"isort",

				-- Go
				"gopls",
				"gofumpt",
				"goimports",
				"golangci-lint",

				-- Flutter/Dart
				-- Note: Dart LSP is provided by Flutter SDK, not Mason
				-- Install Flutter SDK and it includes dartls automatically

				-- Database
				"sqls",
				"sql-formatter",

				-- YAML/JSON
				"yaml-language-server",
				"json-lsp",

				-- Docker
				"dockerfile-language-server",
				"docker-compose-language-service",

				-- Markdown
				"markdownlint",
			})
		end,
	},

	-- lsp servers
	{
		"neovim/nvim-lspconfig",
		opts = {
			inlay_hints = { enabled = false },
			---@type lspconfig.options
			servers = {
				-- CSS
				cssls = {},

				-- Tailwind
				tailwindcss = {
					root_dir = function(...)
						return require("lspconfig.util").root_pattern(".git")(...)
					end,
				},

				-- TypeScript/JavaScript
				tsserver = {
					root_dir = function(...)
						return require("lspconfig.util").root_pattern(".git")(...)
					end,
					single_file_support = false,
					settings = {
						typescript = {
							inlayHints = {
								includeInlayParameterNameHints = "literal",
								includeInlayParameterNameHintsWhenArgumentMatchesName = false,
								includeInlayFunctionParameterTypeHints = true,
								includeInlayVariableTypeHints = false,
								includeInlayPropertyDeclarationTypeHints = true,
								includeInlayFunctionLikeReturnTypeHints = true,
								includeInlayEnumMemberValueHints = true,
							},
						},
						javascript = {
							inlayHints = {
								includeInlayParameterNameHints = "all",
								includeInlayParameterNameHintsWhenArgumentMatchesName = false,
								includeInlayFunctionParameterTypeHints = true,
								includeInlayVariableTypeHints = true,
								includeInlayPropertyDeclarationTypeHints = true,
								includeInlayFunctionLikeReturnTypeHints = true,
								includeInlayEnumMemberValueHints = true,
							},
						},
					},
				},
				-- HTML
				html = {},

				-- Emmet (HTML/CSS autocomplete)
				emmet_ls = {
					filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
				},

				-- YAML
				yamlls = {
					settings = {
						yaml = {
							keyOrdering = false,
						},
					},
				},

				-- JSON
				jsonls = {},

				-- PHP (Intelephense - best for Laravel)
				intelephense = {
					filetypes = { "php", "blade" },
					settings = {
						intelephense = {
							files = {
								maxSize = 5000000,
								associations = { "*.php", "*.blade.php" },
							},
							environment = {
								phpVersion = "8.3",
							},
							stubs = {
								"apache",
								"bcmath",
								"bz2",
								"calendar",
								"com_dotnet",
								"Core",
								"ctype",
								"curl",
								"date",
								"dba",
								"dom",
								"enchant",
								"exif",
								"FFI",
								"fileinfo",
								"filter",
								"fpm",
								"ftp",
								"gd",
								"gettext",
								"gmp",
								"hash",
								"iconv",
								"imap",
								"intl",
								"json",
								"ldap",
								"libxml",
								"mbstring",
								"meta",
								"mysqli",
								"oci8",
								"odbc",
								"openssl",
								"pcntl",
								"pcre",
								"PDO",
								"pdo_ibm",
								"pdo_mysql",
								"pdo_pgsql",
								"pdo_sqlite",
								"pgsql",
								"Phar",
								"posix",
								"pspell",
								"readline",
								"Reflection",
								"session",
								"shmop",
								"SimpleXML",
								"snmp",
								"soap",
								"sockets",
								"sodium",
								"SPL",
								"sqlite3",
								"standard",
								"superglobals",
								"sysvmsg",
								"sysvsem",
								"sysvshm",
								"tidy",
								"tokenizer",
								"xml",
								"xmlreader",
								"xmlrpc",
								"xmlwriter",
								"xsl",
								"Zend OPcache",
								"zip",
								"zlib",
								"redis",
							},
						},
					},
				},

				-- Disable phpactor (use intelephense instead)
				phpactor = {
					enabled = false,
				},

				-- Python
				pyright = {
					settings = {
						python = {
							analysis = {
								typeCheckingMode = "basic",
								autoSearchPaths = true,
								useLibraryCodeForTypes = true,
							},
						},
					},
				},

				-- Go
				gopls = {
					settings = {
						gopls = {
							analyses = {
								unusedparams = true,
							},
							staticcheck = true,
							gofumpt = true,
						},
					},
				},

				-- Dart/Flutter - handled by flutter-tools.nvim
				-- Disable Mason auto-install for dartls (Flutter SDK provides it)
				dartls = {
					mason = false,
				},

				-- SQL
				sqls = {},

				-- Docker
				dockerls = {},
				docker_compose_language_service = {},

				-- Lua
				lua_ls = {
					-- enabled = false,
					single_file_support = true,
					settings = {
						Lua = {
							workspace = {
								checkThirdParty = false,
							},
							completion = {
								workspaceWord = true,
								callSnippet = "Both",
							},
							misc = {
								parameters = {
									-- "--log-level=trace",
								},
							},
							hint = {
								enable = true,
								setType = false,
								paramType = true,
								paramName = "Disable",
								semicolon = "Disable",
								arrayIndex = "Disable",
							},
							doc = {
								privateName = { "^_" },
							},
							type = {
								castNumberToInteger = true,
							},
							diagnostics = {
								disable = { "incomplete-signature-doc", "trailing-space" },
								-- enable = false,
								groupSeverity = {
									strong = "Warning",
									strict = "Warning",
								},
								groupFileStatus = {
									["ambiguity"] = "Opened",
									["await"] = "Opened",
									["codestyle"] = "None",
									["duplicate"] = "Opened",
									["global"] = "Opened",
									["luadoc"] = "Opened",
									["redefined"] = "Opened",
									["strict"] = "Opened",
									["strong"] = "Opened",
									["type-check"] = "Opened",
									["unbalanced"] = "Opened",
									["unused"] = "Opened",
								},
								unusedLocalExclude = { "_*" },
							},
							format = {
								enable = false,
								defaultConfig = {
									indent_style = "space",
									indent_size = "2",
									continuation_indent_size = "2",
								},
							},
						},
					},
				},
			},
			setup = {},
			-- Global LSP keymaps (applies to all servers)
			keys = {
				{
					"gd",
					function()
						require("telescope.builtin").lsp_definitions({ reuse_win = false })
					end,
					desc = "Goto Definition",
					has = "definition",
				},
			},
		},
	},
}
