# Composer Networking Troubleshooting Script

### Supports
* Composer Get Validation Script.

### Prerequisites:
* Cloud SDK
* A Composer environment creation attempt

### How to use: 
* Download the latest script (getscript.sh)
* Make the script executable by running,
  ```
  chmod +x getscript.sh
  ```
* Log into the GCP project
  ```
  gcloud init
  ```
* Execute the bash script by running
  ```
  ./getscript.sh
  ```
Follow instruction and enter the details as prompted.
* Attempt to create the Composer environment

The script will let you know what is networking aspect is preventing the environment from getting created.