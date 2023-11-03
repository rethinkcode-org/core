---
state_bucket: state.rethinkcode.org  # Used to retrieve variables of Terraform State output
core_repo: git@github.com:rethinkcode-org/core.git
envs:
  staging:
    instance_key_path:
      type: string
      value: ../infra/keys/staging/instance/id
    deploy_key_path:
      type: string
      value: ../infra/keys/staging/deploy/id
    traefik_basicauth:
      type: string
      value: dummy  # htpasswd -bnBC 10 "" xyz | tr -d ':\n'
    traefik_acme_dnschallenge_provider:
      type: string
      value: cloudflare
    traefik_acme_dnschallenge_resolvers:
      type: string
      value: 1.1.1.1:53,1.0.0.1:53
    traefik_acme_dnschallenge_variables:
      type: map
      value:
        CF_DNS_API_TOKEN: dummy
    traefik_acme_email:
      type: string
      value: dummy@example.com
    traefik_log_level:
      type: string
      value: DEBUG
    traefik_api_insecure:
      type: bool
      value: false
    traefik_api_debug:
      type: bool
      value: true
    traefik_api_dashboard:
      type: bool
      value: true
    traefik_accesslog:
      type: bool
      value: true
  prod:
    deploy_key_path:
      type: string
      value: ../infra/keys/prod/deploy/id
    instance_key_path:
      type: string
      value: ../infra/keys/prod/instance/id
    traefik_basicauth:
      type: string
      value: dummy  # htpasswd -bnBC 10 "" xyz | tr -d ':\n'
    traefik_acme_dnschallenge_provider:
      type: string
      value: cloudflare
    traefik_acme_dnschallenge_resolvers:
      type: string
      value: 1.1.1.1:53,1.0.0.1:53
    traefik_acme_dnschallenge_variables:
      type: map
      value:
        CF_DNS_API_TOKEN: dummy
    traefik_acme_email:
      type: string
      value: dummy@example.com
    traefik_log_level:
      type: string
      value: ERROR
    traefik_api_insecure:
      type: bool
      value: false
    traefik_api_debug:
      type: bool
      value: false
    traefik_api_dashboard:
      type: bool
      value: true
    traefik_accesslog:
      type: bool
      value: true
