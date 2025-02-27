# 🔹 Log Archive Tool

## 📌 Overview
This script is a simple **log archiver** that compresses logs from a specified directory and stores them in an archive folder. It helps keep the system clean while maintaining logs for future reference.

## 🚀 Features
- Takes a **log directory** as an argument.
- Compresses logs into a **tar.gz** file.
- Stores archives in `~/log_archives`.
- Logs archive details in `archive_log.txt`.
- Uses the **🔹 blue diamond emoji** as a signature.

## 🛠️ Installation & Usage

### 1️⃣ **Give Execution Permission**
```bash
chmod +x log-archive.sh
```

### 2️⃣ **Run the Script**
```bash
./log-archive.sh /var/log
```

### 3️⃣ **View Archives**
```bash
ls ~/log_archives
```

### 4️⃣ **Check Archive Log**
```bash
cat ~/log_archives/archive_log.txt
```

## ✅ Example Output
```bash
🔹 Logs archived successfully: logs_archive_20240816_100648.tar.gz
```

## 📌 Notes
- The script **does not delete logs** after archiving. If you want automatic cleanup, modify the script.
- Change the `ARCHIVE_DIR` variable in `log-archive.sh` to customize the archive location.

## 🔹 Author
  Divine 🚀

### The project was gotten from:
- https://roadmap.sh/projects/log-archive-tool