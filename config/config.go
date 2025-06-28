package config

var (
	Version       = "1.0.0"
	WireCmd       = "github.com/google/wire/cmd/wire@latest"
	BongoCmd      = "github.com/doublemine/bongo@latest"
	RepoBase      = "https://github.com/go-nunu/nunu-layout-base.git"
	RepoAdvanced  = "https://github.com/go-nunu/nunu-layout-advanced.git"
	RepoAdmin     = "https://github.com/go-nunu/nunu-layout-admin.git"
	RepoChat      = "https://github.com/go-nunu/nunu-layout-chat.git"
	RepoMCP       = "https://github.com/go-nunu/nunu-layout-mcp.git"
	RunExcludeDir = ".git,.idea,tmp,vendor"
	RunIncludeExt = "go,html,yaml,yml,toml,ini,json,xml,tpl,tmpl"
)
