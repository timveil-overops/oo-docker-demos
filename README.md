# OverOps Docker Demos

* [On Prem](onprem)
* [SaaS](saas)

## Troubleshooting
* If files have been downloaded to Windows its possible windows line endings have been added to the `.sh` files.  This can lead to odd behavior.  You may want to run something like this...

`` bash
sed -i 's/\r//' wait-for-analysis-server.sh
``