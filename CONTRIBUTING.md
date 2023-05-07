# Contributing to Polypass
Below are some helpful guidelines and tips for contributing to Polypass.

## Issues
Please be as descriptive as possible when creating an issue. I will try to respond ASAP.

## Code
If you have any questions, feel free to start a discussion in the Q&A category in GitHub Discussions.

### Terminology
**Master Password**: The plaintext version of the user's password used to unlock a vault

**Derived Key**: The result of performing Polypass's KDF function on the Master Password

**Master Key**: The secure randomly generated key for a vault, stored in the vault file and encrypted by the Derived Key