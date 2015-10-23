# Red Hat Linux v6.6 with Oracle JDK v8u45

FROM rhel6.6:latest
MAINTAINER Justin Grant <jlgrock@gmail.com>

# ##################
# Register with Red Hat - note, you need to replace the username/password.
# ##################
# RUN subscription-manager register --username username --password password --auto-attach

# ##################
# Update distro
# ##################
RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum update -y && \
	yum -y install xmlstarlet saxon augeas bsdtar wget tar zip unzip && \
	yum clean all

# ##################
# Install Oracle JDK
# ##################
RUN wget --no-check-certificate --no-cookies \
	--header "Cookie: oraclelicense=accept-securebackup-cookie" \
	http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm \
	&& rpm -ivh jdk-8u45-linux-x64.rpm && rm jdk-8u45-linux-x64.rpm
