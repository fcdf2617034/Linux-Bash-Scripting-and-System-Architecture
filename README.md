# Bash Automation Scripting & System Architecture Auditing (WADF Module 1, Week 3)
**Course:** WADF-2026 – Web Application & Digital Forensics Fundamentals  
**Student Name:** Kenneth Ukata  
**Registration Number:** fcdf2617034  
**Environment:** Debian Linux (Kali Linux `kali@KENNETH`)  

---

## 📌 Lab Overview
This repository contains terminal outputs, script code, system inventory findings, and data location documentation for **WADF Module 1, Week 3 (Labs 5 & 6)**[cite: 81]. The objective of this practical module was to transition from manual CLI execution into Bash automation scripting, implement strict input validation and path security checks, compile system hardware inventories, analyze storage partitioning, and map critical Linux data directory architectures[cite: 81, 83, 84, 85].

---

## 🛠️ Utilities & Concepts Covered
* **Bash Scripting & Command Substitution:** Building automated greeting scripts utilizing shell variables and dynamic command outputs (`whoami`, `hostname`, `date`, `PWD`)[cite: 81, 82].
* **Input Validation & Security Controls:** Enforcing positional parameter checks, handling blank inputs, and filtering unsafe path characters (`/`, `..`) to mitigate traversal risks[cite: 82, 83].
* **System Inventory & Hardware Auditing:** Profiling CPU architecture, memory limits, storage disks, network interfaces, and virtualization contexts (`oracle`)[cite: 83, 84].
* **Filesystem Mapping & Data Hierarchy:** Documenting persistent vs. temporary storage locations (`/home`, `/etc`, `/var`, `/tmp`, `/proc`, `/sys`) and mapping block devices using unique UUIDs[cite: 84, 85, 86].

---

## 📂 Key Practical Modules Covered

### Lab 5A: System Greeting Script (`system_greeting.sh`)
* Developed a modular Bash script utilizing command substitution to dynamically capture active user credentials, host identifiers, current timestamps, and working locations[cite: 81, 82].

### Lab 5B: Input Validation & Note Generation (`create_notes.sh`)
* Implemented secure scripting logic featuring:
  * **Blank-input control:** Validates that user-supplied project parameters are not empty (`-z`)[cite: 82, 83].
  * **Path traversal prevention:** Checks for unauthorized characters (`/` or `..`) before directory creation[cite: 82, 83].
  * **Automated directory and file generation:** Sets up structured targets (`$HOME/wadf-labs/week3/genarated-notes/$project_name`) using safe looping (`for i in {1..3}`)[cite: 82, 83, 84].

### Lab 5C & 6A: System Inventory & Storage Mapping (`system_inventory.txt`, `storage_map.txt`)
* Compiled an architectural overview of the virtual machine environment (x86_64, 2 vCPUs, 1.9GiB RAM, `sda` 80.1G ext4 storage partition)[cite: 84, 85].
* Mapped physical block devices to file system UUIDs (`sda1` mapped to UUID `894e89ec-b178-42b7-a450-6e979a2aa8fe`)[cite: 85].

### Lab 6B: Data Location Map Worksheet
* Classified core Linux directories according to persistence and origin:
  * **User Files:** `/home`[cite: 85, 86]
  * **System Configuration:** `/etc`[cite: 85, 86]
  * **System Logs:** `/var/log`[cite: 85, 86]
  * **Runtime State / Volatile Data:** `/run`, `/tmp` (volatile, clears on reboot)[cite: 85, 86]
  * **Kernel & Process Information:** `/proc`, `/sys` (virtual filesystems managed directly by the kernel)[cite: 85, 86]

---

## 💡 Key Takeaway & Reflection
> *"Automating administrative tasks using Bash while embedding security validation checks (such as blocking path traversal patterns) highlights how crucial defensive coding is, even at the shell script level."*
