# Deploy vCSA

This will deploy a vCenter Server Appliance onto an existing ESXi host. Right now this only contains the template file. The script to install is part of the vCenter ISO.

## Big Sur Issue

If using this on MacOS Big Sur, running the VMware scripts may cause security issues. You can temporarily bypass this with:

Do this at your own risk.

```bash
sudo spctl --master-disable
```

And then enable the security feature again when you're done:

```bash
sudo spctl --master-enable
```
