FROM rabbitmq:management-alpine

RUN rabbitmq-plugins enable rabbitmq_management

ENV RABBITMQ_DEFAULT_USER ${RABBITMQ_DEFAULT_USER:-gapp}
ENV RABBITMQ_DEFAULT_PASS ${RABBITMQ_DEFAULT_PASS:-gapp}

# Expose ports
EXPOSE 5672/tcp 15672/tcp
