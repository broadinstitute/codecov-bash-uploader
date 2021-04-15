# codecov-bash-uploader
Verified CodeCov Bash Uploader script in light of https://about.codecov.io/security-update/

This script preserves the semantics of the original script, but 
validates its integrity via SHA sums, according to:
https://docs.codecov.io/docs/about-the-codecov-bash-uploader#validating-the-bash-script

## Usage
```
bash <(curl -s https://raw.githubusercontent.com/broadinstitute/codecov-bash-uploader/main/codecov-verified.bash)
```
