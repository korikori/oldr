# oldr
Given a list of (absolute paths to) files, returns the oldest. Reads from file or use with pipes.

Intended to work between a vulnerability scanner and a stath implementation (see [stath.sh](https://github.com/korikori/stath.sh) for a PoC) for quicker incident investigations, for example:

```
wf malware-scan /home/user/www/www/ | oldr | xargs stath
```
