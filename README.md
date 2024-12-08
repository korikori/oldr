# oldr
Given a list of (absolute paths to) files, returns the oldest. Gets input from a file or `stdin`.

Intended to work between a vulnerability scanner and a stath implementation (see [stath.sh](https://github.com/korikori/stath.sh) for a PoC) for quicker incident investigations, for example:

```
wf malware-scan /home/user/www/www/ | oldr | xargs stath
```
