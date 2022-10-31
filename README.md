# odoo-development-template

Debug Odoo source code using Docker and Visual Studio Code

## Setup

1. Install [docker](https://docs.docker.com/engine/install/ubuntu/)
2. clone `odoo-development-template` and run command

```bash
git clone https://github.com/anhvu-sg/odoo-development-template.git

cd odoo-development-template

docker-compose up -d --build
```

3. Connect to the instance via [http://localhost:8069](http://localhost:8069), install `custom_module`
4. Active debug -> go to VSCode -> Debug -> run `Odoo: Attach`
5. Try to create a new res.partner

### For MACOS

- download the latest [docker](https://docs.docker.com/desktop/install/mac-install/)
- Enable VirtioFS, VirtioFS is only available to users of the following macOS versions:
- macOS 12.2 and above (for Apple Silicon)
- macOS 12.3 and above (for Intel)
- To enable virtiofs in Docker Desktop:
Ensure that you are using Docker Desktop version 4.6, available here
Navigate to ‘Preferences’ (the gear icon) > ‘Experimental Features’
Select the ‘Use the new Virtualization framework’ and ‘Enable VirtioFS accelerated directory sharing’ toggles
Click ‘Apply & Restart’

![macos-01](/docs/docker/macos-01.png)
