FROM public.ecr.aws/amazonlinux/amazonlinux:2

# Install the "script" command to upload command logs to Amazon S3 or CloudWatch Logs
RUN yum install util-linux -y && \
    yum clean all && \
    rm -rf /var/cache/yum

COPY . .
RUN chmod +x ./entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
