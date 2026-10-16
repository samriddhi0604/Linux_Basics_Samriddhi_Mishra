#!/usr/bin/env bash
# =============================================================
#  Linux Basics - DevOps Assignment
#  Runs all 12 tasks in order. Run from an empty folder:
#      bash linux_basics.sh
# =============================================================

# ---------- 1. Creating and Renaming Files/Directories ----------
echo "== Task 1: create directory test_dir =="
mkdir -p test_dir
ls -ld test_dir

echo "== Task 2: create empty file example.txt inside test_dir =="
touch test_dir/example.txt
ls -l test_dir

echo "== Task 3: rename example.txt -> renamed_example.txt =="
mv test_dir/example.txt test_dir/renamed_example.txt
ls -l test_dir

# ---------- 2. Viewing File Contents ----------
echo "== Task 4: display /etc/passwd with cat =="
cat /etc/passwd

echo "== Task 5: first 5 lines of /etc/passwd =="
head -n 5 /etc/passwd

echo "== Task 6: last 5 lines of /etc/passwd =="
tail -n 5 /etc/passwd

# ---------- 3. Searching for Patterns ----------
echo "== Task 7: lines containing 'root' in /etc/passwd =="
grep "root" /etc/passwd

# ---------- 4. Zipping and Unzipping ----------
echo "== Task 8: compress test_dir into test_dir.zip =="
rm -f test_dir.zip
zip -r test_dir.zip test_dir
ls -l test_dir.zip

echo "== Task 9: unzip test_dir.zip into unzipped_dir =="
rm -rf unzipped_dir
unzip test_dir.zip -d unzipped_dir
ls -lR unzipped_dir

# ---------- 5. Downloading Files ----------
echo "== Task 10: download a file with wget =="
# Any public URL works. example.com/sample.txt is only a placeholder in the
# assignment and may not exist, so a real public text file is used here.
wget -O sample.txt https://raw.githubusercontent.com/torvalds/linux/master/README
ls -l sample.txt
head -n 5 sample.txt

# ---------- 6. Changing Permissions ----------
echo "== Task 11: create secure.txt and make it read-only for everyone =="
echo "This file is read-only." > secure.txt
ls -l secure.txt
chmod 444 secure.txt          # same as: chmod a=r secure.txt
ls -l secure.txt

# ---------- 7. Working with Environment Variables ----------
echo "== Task 12: set environment variable MY_VAR =="
export MY_VAR="Hello, Linux!"
echo "$MY_VAR"
printenv MY_VAR
