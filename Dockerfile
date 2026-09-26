FROM vulnerables/web-dvwa:latest

# Use archived Debian Stretch repositories
RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list && \
    echo "deb http://archive.debian.org/debian-security stretch/updates main" >> /etc/apt/sources.list && \
    echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf.d/99no-check-validity && \
    apt-get update && \
    apt-get install -y nano vim gedit && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose port 80 for DVWA
EXPOSE 80

CMD ["apache2-foreground"]
