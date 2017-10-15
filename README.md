# devops-test

#### USAGE: ./tomcat_deploy.sh DEV|PROD

- - -

- **Ajout**: Script *tomcat8* pour obtenir (seulement) le status du process tomcat8
- **Ajout**: Dans le *Dockerfile* les 5 dernières lignes afin de copier les fichiers du repo vers dans le conteneur 

  - COPY tomcat_test.sh /tmp/
  - COPY sample.war /tmp/
  - COPY tomcat_deploy.yml /data/
  - COPY tomcat8 /etc/init.d/
  - RUN chmod 755 /etc/init.d/tomcat8
  
- **Ajout**: 'sleep 2' dans le script *tomcat_test.sh* sinon les commandes 'curl' et 'cat' sont exécuté avant que le tomcat8 est terminé de démarré
