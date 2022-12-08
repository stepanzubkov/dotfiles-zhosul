# Deploy Github workflows.

To use place `.yml` file inside `.github/workflows/` directory inside repo and enable actions.

### Docker compose deploy SSH.

Does deployment on host (server) for docker-compose with SSH and build script on server side.

Steps:

- Upload deploy script on server.
- Change `.yml` file with your path to script on the server.
- Update triggers if you need (directory of the source, branches, environment)
- Update GitHub secrets settings for repo. or org. with your SSH data.
- Enable actions for GitHub repo and org.
- Trigger with push or via actions tab.
