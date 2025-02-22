# VSCode editor

## Settings
### Project settings

Create a `.vscode/settings.json` in the main directory.

```JSON
{
	"eslint.enable": true,
	"eslint.format.enable": true,
	"editor.defaultFormatter": "dbaeumer.vscode-eslint",
	"eslint.codeActionsOnSave.mode": "all",
	"editor.codeActionsOnSave": {
		"source.fixAll.eslint": "always"
	},
	"eslint.useFlatConfig": true
}
```
