## Module1: Introduction to Linux
### Introduction
  * **Operating System (OS):** Software that manages hardware and allows users/programs to perform tasks.
  * **Unix:** Family of operating systems created in the **1960s at AT&T Bell Labs**; later rewritten in **C** to run on many hardware systems. Examples: Solaris, FreeBSD, AIX, macOS.
  * **Linux:** Free, **open-source Unix-like OS** created in **1991 by Linus Torvalds**.
  * **Key features of Linux:** Open-source, secure, **multi-user**, **multitasking**, and **portable** across devices.
  * **Origins:** GNU tools (1980s) + Linux kernel → modern Linux systems; **Tux mascot created by Larry Ewing in 1996**.
  * **Common uses today:** Smartphones (Android), **supercomputers**, **cloud/data center servers**, and personal computers (e.g., Ubuntu).

### Linux distribution (distro):
* Distros differ by **GUI, commands, utilities, and support model** (community or enterprise).
    **Examples:**
    * **Debian:** Stable, reliable; popular for **servers**.
    * **Ubuntu:** Debian-based; developed by Canonical.
    * **RHEL:** Enterprise Linux by Red Hat (owned by IBM).
    * **Fedora:** Community distro sponsored by Red Hat.
    * **SUSE Linux Enterprise:** Enterprise distro by SUSE.
    * **Arch Linux:** Highly customizable but requires advanced Linux knowledge.

### Linux Architecture has 5 layers:
  **UI → Applications → Operating System → Kernel → Hardware**
  * **Kernel:** Core of Linux; manages **memory, processes, devices, and security**.
  * **Filesystem:** Tree structure starting from **root `/`**.
  * **Key directories:**
    **/bin** (commands), **/usr** (programs), **/home** (user files), **/boot** (startup files), **/media** (USB/CD).

### Linux Terminal
  * **Shell:** Program that **interprets and runs commands** (e.g., **Bash**, Zsh).
  * **Terminal:** Interface where users **type commands and see output**.
  * **How it works:** User → Terminal → Shell → Kernel → Hardware → Output back to terminal.

**Basic navigation:**
  * `cd` – change directory
  * `cd /` – go to **root**
  * `cd ~` – go to **home directory**
  * `cd ..` – go to **parent directory**
  * `ls` – list files in the current directory
**Paths:**
  * `/` = root directory
  * `~` = home directory
  * `.` = current directory
  * `..` = parent directory.

### Creating & Editing Text Files
  * **Two types of Linux text editors:**
    * **Command-line:** nano, vi, vim
    * **GUI:** gedit, emacs
  * **nano:** Simple command-line editor (search, undo/redo, syntax highlighting).
  * Powerful editor with **Insert mode (write text)** and **Command mode (save/quit)**.
  * **gedit:** Easy-to-use **GUI editor** with features like search/replace and plugins.
  * Open file with nano:
    `nano filename`

# Module2: Introduction to Linux commands
  * **Shell:** Interface to run commands and automate tasks; default is **Bash**.
  **Common commands:**
  * **System:** `whoami`, `uname`, `ps`, `top`, `df`, `date`
  * **Files:** `cp`, `mv`, `rm`, `touch`, `chmod`, `grep`
  * **Directories:** `ls`, `pwd`, `mkdir`, `cd`, `find`
  * **View text:** `cat`, `head`, `tail`, `echo`
  * **Network:** `ping`, `curl`, `wget`
  * **Archive:** `tar`, `zip`, `unzip`

### Informational Commands 
  * **User info:**
    `whoami` – current user
    `id` – user/group ID
    * **OS info:**
      `uname` – system information
    * **Disk usage:**
      `df -h` – shows disk space
    * **Processes:**
      `ps` – running processes
      `top` – live system monitor
    * **Output text:**
      `echo` – print text or variables
    * **Date/time:**
      `date` – show system date
    * **Help:**
      `man command` – open command manual.

* **Navigation Commands**
    * `ls` – list files/directories
    * `pwd` – show current directory
    * `cd` – change directory (`..` parent, `~` home)
    * **Paths:** relative (from current), absolute (full path)
    * `find . -name file` – search for a file

* **File Management**
    * `mkdir` – create directory
    * `rmdir` – delete empty directory
    * `rm` – delete file (`-r` for folders)
    * `touch` – create empty file
    * `cp` – copy files/folders
    * `mv` – move/rename files
    * `chmod +x file` – make file executable

* **Managing File Permissions and Ownership**
    * **Ownership type:** user, group, other
      * **Permissions:** `r` read, `w` write, `x` execute
      * **View:** `ls -l`
      * **Change:** `chmod`
      * **Private file:** `chmod go-r file`

* **Viewing File Content**
    * `cat` – show entire file
    * `more` – view file page by page
    * `head` – first 10 lines (`-n` for custom)
    * `tail` – last 10 lines (`-n` for custom)
    * `wc` – count **lines, words, characters** (`-l`, `-w`, `-c`)

* **Text File Commands**
    * **`sort`** – sort lines (`-r` reverse)
    * **`uniq`** – remove consecutive duplicates
    * **`grep`** – find lines matching a pattern (`-i` ignore case)
    * **`cut`** – extract characters/fields (`-c`, `-d`, `-f`)
    * **`paste`** – merge lines from multiple files (`-d` delimiter)

### Networking
  * **Computer Network**: Set of computers/devices communicating and sharing resources. Examples: LAN, WAN, Internet.
  * **Network Resource**: Any identifiable object (file, document).
  * **Network Node**: Any device participating in a network (computers, modems, switches, Wi-Fi hotspots).

**Hosts, Clients, Servers**
  * **Host**: A computer acting as client or server.
  * **Server**: Provides resources to clients.
  * Hosts can serve dual roles.

**Packets and Ping**
  * **Packet**: Chunk of data with control info (addresses) + payload (message).
  * **Ping**: Sends ICMP echo requests to test connectivity; shows IP, round-trip time, packet loss.

**IP Addresses & URLs**
  * **IP Address**: Unique code identifying a host.
  * **URL**: Identifies a web resource (protocol + hostname + path).


**Networking Commands**
  * **`hostname`** – Show/set your computer's name or IP (`-i` for IP, `-s` for short name).
  * **`ip a` / `ip addr show <device>`** – View all network interfaces and details (IP, MAC, packets, errors).
  * **`ping <host>`** – Test connectivity; `-c N` limits number of requests.
  * **`curl <URL>`** – Transfer data to/from URLs; `-o <file>` saves to local file.
  * **`wget <URL>`** – Download files from a URL; supports recursive downloads.

**Example:**
  ```bash
  ping -c 5 google.com      # Test connectivity with 5 packets
  curl www.google.com -o google.txt   # Save webpage to file
  wget https://w3.org/iso8859-1.txt  # Download file from URL
  ip a                        # Show network interfaces
  hostname -i                 # Show IP address
  ```

# Module3: Introduction to shell scripting
Here’s an ultra-short **cheat sheet** version of your shell scripting notes:

---

## Shell Scripting Basics
* **Script** = list of commands executed by a shell (interpreted, not compiled)
* **Use**: automation, ETL, backups, system tasks
### Shebang
```bash
#!/bin/bash      # bash
#!/bin/sh        # sh
#!/usr/bin/env python3  # python
```
### Hello World
```bash
echo "#!/bin/bash" > hello.sh
echo "echo Hello World" >> hello.sh
chmod +x hello.sh
./hello.sh
```
---
## Variables
```bash
firstname=Jeff
echo $firstname

read lastname
echo $lastname

unset lastname
```
* **Environment variable**: `export VAR=value`
---
## Filters & Pipes
* **Filter**: `wc`, `cat`, `sort`, `grep`
* **Pipe**: `ls | sort -r`
---
## Metacharacters & Quoting
* `#` comment, `;` multiple commands, `*` wildcard, `?` single char
* `\` escape, `" "` interpolate, `' '` literal
---
## I/O Redirection
```bash
>  overwrite
>> append
2> error
<  input
```
---
## Command Substitution
```bash
here=$(pwd)
echo $here
```
---
## Command Line Arguments
```bash
./script.sh arg1 arg2
```
---
## Execution Modes
* **Batch**: sequential
* **Concurrent**: `command1 & command2`

Here’s a **super concise version** of your summary:

---

* **Shell script**: program starting with `shebang (#!)`, runs commands/programs; interpreted, not compiled.
* **Filters & Pipes**: commands like `cat`, `sort`; chain with `|`.
* **Variables**: `var=value` (shell), `export var` (environment); list with `set` or `env`.
* **Metacharacters**: special symbols with shell meaning.
* **Quoting**: controls interpretation of metacharacters (`' '` literal, `" "` interpolate, `\` escape).
* **I/O redirection**: `>` overwrite, `>>` append, `2>` errors, `<` input.
* **Command substitution**: `var=$(command)` stores output in variable.
* **Command line arguments**: pass values to scripts.
* **Concurrent mode**: `command1 & command2` runs in parallel.
* **Cron jobs**: schedule tasks; syntax: `m h dom mon dow command`; edit with `crontab -e`, list with `crontab -l`.

---

If you want, I can make it **one-line-per-topic even shorter for flashcard-style revision**. Do you want me to do that?



# Module4: Final project & Final exam
**There are 2 commands that you need to run which are:**

  1) Run this in terminal
      ```
      curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/pWN3kO2yWEuKMvYJdcLPQg/backup.sh
      ```
  2) Important documents assignments
     ```
      curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/Final%20Project/important-documents.zip
     ```