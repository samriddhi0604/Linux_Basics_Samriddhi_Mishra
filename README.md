# Linux Basics – DevOps Assignment

**Student:** Samriddhi Mishra
**GitHub repository:** https://github.com/samriddhi0604/Linux_Basics_Samriddhi_Mishra

Practice of essential Linux command-line operations: file and directory management,
viewing files, searching, archiving, downloading, permissions and environment variables.

## Folder contents

| Path | What it is |
|---|---|
| `linux_basics.sh` | Script that performs all 12 tasks in order |
| `Linux_Basics_Samriddhi_Mishra_Documentation.docx` | Documentation: command, screenshot and explanation for every task |
| `screenshots/` | Terminal screenshots for tasks 1–12 |
| `output_files/` | Files produced by the tasks (`test_dir`, `test_dir.zip`, `unzipped_dir`, `sample.txt`, `secure.txt`) |
| `GitHub_Repository_Link.txt` | Link to the GitHub repository |

## How to run

```bash
mkdir run && cd run
bash ../linux_basics.sh
```

Requires `zip`, `unzip` and `wget` (Ubuntu/Debian: `sudo apt install zip unzip wget`).

## Commands used

| # | Task | Command |
|---|---|---|
| 1 | Create directory | `mkdir test_dir` |
| 2 | Create empty file | `touch test_dir/example.txt` |
| 3 | Rename file | `mv test_dir/example.txt test_dir/renamed_example.txt` |
| 4 | Show whole file | `cat /etc/passwd` |
| 5 | First 5 lines | `head -n 5 /etc/passwd` |
| 6 | Last 5 lines | `tail -n 5 /etc/passwd` |
| 7 | Search pattern | `grep "root" /etc/passwd` |
| 8 | Zip directory | `zip -r test_dir.zip test_dir` |
| 9 | Unzip to new dir | `unzip test_dir.zip -d unzipped_dir` |
| 10 | Download file | `wget -O sample.txt <URL>` |
| 11 | Read-only for all | `chmod 444 secure.txt` |
| 12 | Environment variable | `export MY_VAR="Hello, Linux!"` |
