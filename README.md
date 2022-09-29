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
