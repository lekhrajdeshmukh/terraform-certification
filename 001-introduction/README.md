# Categories of Tools

The tools are widely divided into two major categories

![Flowchart](./intro.drawio.svg)


- Configuration management tools are primarly used for maintaing desired configuration of the systems (inside servers)
- Example: All server should have antivirus installed with version 10.0.2

- Infrastructure orchestration is primarly used to create and manage infrastructure environments.
- Example: Create 3 server with 4 GB RAM, 2 vCPUs. Each server should have a firewall rule to allow SSH connection from office IPs.


# Providers in terraform

- There are three different types of provider tiers in terraform:
    - Official:
        - Owned and maintained by Hashicorp
    
    - Partner:
        - Owned and maintained by technology company that maintains direct partnership with hashicorp

   - Community:
        - Owned and Maintained by individual contributers


# Provider Namespace

- Namespaces are used to help users identify the organization or publisher responsible for the integration.

- Official: hashicorp

- Partner: Thrid party organization e.g. mongodb/mongodbatlas

- Community: Maintainers individual or organization account, e.g. DeviaVir/gsuite

