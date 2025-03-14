*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Resource  config.robot

*** Keywords ***
Setup Browser
    Set Screenshot Directory  path=/screenshots/
    Open Browser  ${BASE_URL}  ${BROWSER}

Close Browser
    Capture Page Screenshot
    Close Browser

Clear Old Reports
    Remove Directory  reports  recursive=True
    Create Directory  reports

# Prepare Report Directories
#     # Ensure archived_reports/ exists
#     ${dir_exists}    Run Keyword And Return Status    Directory Should Exist    archived_reports
#     Run Keyword If    not ${dir_exists}    Create Directory    archived_reports

#     # Move any existing subfolders in reports/ to archived_reports/
#     @{report_folders}    List Directories In Directory    reports
#     FOR    ${folder}    IN    @{report_folders}
#         Move Directory    reports/${folder}    archived_reports/${folder}
#     END

#     # Create a new timestamped subfolder in reports/
#     ${timestamp}    Get Time    format=%Y%m%d_%H%M%S
#     ${current_report_dir}    Set Variable    reports/${timestamp}
#     Create Directory    ${current_report_dir}

#     # Set global variable for use in Robot Framework
#     Set Global Variable    ${CURRENT_REPORT_DIR}    ${current_report_dir}
