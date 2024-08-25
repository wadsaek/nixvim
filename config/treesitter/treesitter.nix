{
  plugins.treesitter = {
    enable = true;
    settings = {
      ensure_installed = [
	#"help"
	"c"
	"rust"
	"asm"
	"c_sharp"
	"cpp"
	"css"
	"csv"
	"dockerfile"
	"fsh"
	"gdscript"
	"git_config"
	"git_rebase"
	"gitattributes"
	"gitcommit"
	"gitignore"
	"go"
	"haskell"
	"javascript"
	"typescript"
	"json"
	"json5"
	"jsonc"
	"latex"
	"lua"
	"markdown"
	"markdown_inline"
	"nasm"
	"nix"
	"python"
	"sql"
	"toml"
	"xml"
	"yaml"
      ];
    };
  };
}
