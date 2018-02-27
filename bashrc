#!/bin/bash

export PATH=/home/ray/anaconda2/bin:$PATH

export JAVA_HOME=/usr/local/java/jdk1.8.0_161
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib

export MAVEN_HOME=/usr/local/maven/apache-maven-3.5.2

export HADOOP_HOME=/usr/local/hadoop/hadoop-2.9.0

export SPARK_HOME=/usr/local/spark/spark-2.2.1-bin-hadoop2.7

export PATH=${JAVA_HOME}/bin:${MAVEN_HOME}/bin:${HADOOP_HOME}/bin:${SPARK_HOME}/bin:$PATH


alias cdd="cd /media/$USER/Data/moon"