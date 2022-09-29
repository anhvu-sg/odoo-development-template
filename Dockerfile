FROM odoo:15.0

USER root

# Copy entrypoint script and Odoo configuration file
COPY ./requirements.txt /tmp/
COPY ./odoo-dev.conf /etc/odoo/

# Install requirements
RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install scikit-build
RUN pip3 install -r /tmp/requirements.txt

RUN chown odoo /etc/odoo/odoo-dev.conf

VOLUME ["/var/lib/odoo", "/mnt/extra-addons"]

# Expose Odoo services
EXPOSE 8069 8071 8072

# Set the default config file
ENV ODOO_RC /etc/odoo/odoo-dev.conf

COPY wait-for-psql.py /usr/local/bin/wait-for-psql.py

# Set default user when running the container
USER odoo

ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
