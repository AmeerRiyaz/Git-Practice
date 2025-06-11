

### 📄 `git-config-guide.md`

````markdown
# Git Config Guide

`git config` is used to set Git configuration values that control Git’s behavior and preferences.

## 📌 Configuration Scopes

| Scope       | Description                           |
|-------------|---------------------------------------|
| `--system`  | Applies to every user on the system   |
| `--global`  | Applies to the current user           |
| `--local`   | Applies to the current Git repository |

---

## 🧑‍💻 Set User Identity

```bash
git config --global user.name "Ameer Riyaz"
git config --global user.email "ameer@example.com"
````

* Sets your Git username and email globally
* Required for making commits

---

## 📝 Set Default Editor

```bash
git config --global core.editor "code --wait"
```

* Sets the default editor for commit messages
* Options: `nano`, `vim`, `notepad`, `code` (VS Code)

---

## ⚙️ Set Aliases

```bash
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
```

* Shortcut commands to save time:

  * `git st` = `git status`
  * `git co` = `git checkout`
  * `git br` = `git branch`

---

## 🔁 Handle Line Endings (Cross-Platform)

```bash
git config --global core.autocrlf true
```

* Windows: `true` (converts LF to CRLF on checkout and back to LF on commit)
* macOS/Linux: `input` (converts to LF only on commit)

---

## 🧾 View Configuration Settings

```bash
git config --list
```

* Lists all effective Git configuration values
* You can filter:

  ```bash
  git config --global --list
  git config --local --list
  ```

---

## 🔍 Get Specific Config Value

```bash
git config user.name
```

* Outputs the value of a specific key

---

## ❌ Unset a Config Value

```bash
git config --global --unset user.name
```

* Removes the specified configuration

---

## 🗂️ Save Configuration to a File

* Global config file: `~/.gitconfig`
* Local repo config: `.git/config`

You can edit them manually or use `git config`.

---

## 🧪 Example: Creating a Custom Setup Script

```bash
#!/bin/bash
git config --global user.name "Ameer Riyaz"
git config --global user.email "ameer@example.com"
git config --global core.editor "code --wait"
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global core.autocrlf true
```

---


