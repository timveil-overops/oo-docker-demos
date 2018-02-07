## todo

- SAML integration

## issues

- issue with collector oneliner daemon startup when base image is centos:7.  works find with openjdk:8

## notes

###

secret key for on-prem trial is always the same and user is admin@takipi.com / 123456

trial sk is always S1#qrXOZTWZsAzN2X0x#02G06kYSRWvet5HQJcq+LVAALN/a8Vu4QqKGIr/d+Ho=#84ae

### agent/collector install

Saas install with previously known secret key
```
wget -O - -o /dev/null http://get.takipi.com | bash /dev/stdin -i --sk=$SECRET_KEY --listen_on_port=$COLLECTOR_PORT --machine_name=collector
```

from install screen (assumes agent + collector)
```
wget -O - -o /dev/null "http://analysis-server:8080/app/download?t=inst" | bash /dev/stdin -i --sk=$SECRET_KEY --s3_url http://analysis-server:8080/service/png --installer_url "http://analysis-server:8080/app/download?t=tgz" --base_url http://analysis-server:8080
```

from documentation - remote collector
```
wget -O - -o /dev/null "http://analysis-server:8080/app/download?t=inst" | bash /dev/stdin -i --sk=$SECRET_KEY --s3_url http://analysis-server:8080/service/png --installer_url "http://analysis-server:8080/app/download?t=tgz" --base_url http://analysis-server:8080 --listen_on_port=$COLLECTOR_PORT
```

from documentation - agent install only
```
wget -O - -o /dev/null "http://analysis-server:8080/app/download?t=inst" | bash /dev/stdin -i --sk=$SECRET_KEY --s3_url http://analysis-server:8080/service/png --installer_url "http://analysis-server:8080/app/download?t=tgz" --base_url http://analysis-server:8080 --daemon_host=<REMOTE_COLLECTOR_HOSTNAME> --daemon_port=<REMOTE_COLLECTOR_PORT>
```

### one-liner help

```
  -h    --help               Print this usage                                                       
        --installer_url      Specify installation tarball URL                                       
  -v    --verbose            Enable verbose logging                                                 
        --non_interactive    Run in non-interactive mode                                            
        --skipjversion       Do not verify Java version                                             
        --install_jdk        Install the JDK                                                        
        --auto_agent                                                                                
        --config_attach                                                                             
        --ide_attach                                                                                
  -sk   --secret_key         Specify secret key                                                     
        --machine_name       Specify machine name                                                   
        --base_url           Specify server URL                                                     
        --s3_url             Specify S3 ping URL                                                    
        --listen_on_port     Specify daemon port to listen                                          
        --daemon_host        Specify a remote daemon host                                           
        --tmp_dir            TEMP folder for the installation                                       
        --tmp_dir_minimal_size TEMP folder minimal free space for the installation (in Bytes)         
        --daemon_port        Specify a remote daemon port                                           
        --passphrase         Specify an authentication token between Daemon and Agent               
        --installation_dir   Specify the installation directory                                     
        --installation_dir_minimal_size Specify the installation directory minimal free space (in Bytes)       
        --strict             Exit on first error or continue all validations                        
        --dry_run            If set will validate the pre requirements only                         
        --unpriviliged       Run in unpriviliged mode (different user then root)                    
        --user               Specify the user name                                                  
        --password           Specify the new user password                                          
        --shutdownGraceTime  Sleep on agent shutdown                                                
        --resourceFolderLimit Specify the resource folder limit in MB                                
        --https_proxy        An Https proxy used to connect to the Internet                         
        --no_check_certificate Skip certificate validation 
```


