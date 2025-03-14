import os
import shutil
from datetime import datetime

REPORTS_DIR = "reports"
ARCHIVE_DIR = "archived_reports"

# Ensure the archive directory exists
os.makedirs(ARCHIVE_DIR, exist_ok=True)

# Move existing report directories
if os.path.exists(REPORTS_DIR):
    for folder in os.listdir(REPORTS_DIR):
        folder_path = os.path.join(REPORTS_DIR, folder)
        if os.path.isdir(folder_path):
            shutil.move(folder_path, os.path.join(ARCHIVE_DIR, folder))

# Generate a new timestamped report directory
timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
current_report_dir = os.path.join(REPORTS_DIR, timestamp)
os.makedirs(current_report_dir)

# Pass the report directory to Robot Framework
os.environ["CURRENT_REPORT_DIR"] = current_report_dir

# Run Robot Framework
os.system(f"robot --outputdir {current_report_dir} tests/")