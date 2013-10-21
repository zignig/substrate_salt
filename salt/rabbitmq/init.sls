rabbitmq-server:
  pkg:
    - installed
  rabbitmq_plugin:
    - enabled
    - name: rabbitmq_management
