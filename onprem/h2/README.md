# OverOps OnPrem Example - H2
This is a simple example of an OverOps "OnPrem" deployment backed by H2.  The `docker-compose.yml` contains the following services:
* `server` - the OverOps backend server, supporting OverOps UI, etc
* `collector` - an OverOps Collector running in a dedicated container (aka Remote Collector)
* `agent` - an OverOps Agent and sample event generator app

## Getting Started
To begin, you must first create a `overops-key.env` file and place it in the same directory as the `Dockerfile`.  Below is a sample `overops-key.env` file.  The sample `TAKIPI_SECRET_KEY` included below is a valid, limited trial key.

```properties
# Sample overops-key.env file
TAKIPI_SECRET_KEY=S1#qrXOZTWZsAzN2X0x#02G06kYSRWvet5HQJcq+LVAALN/a8Vu4QqKGIr/d+Ho=#84ae
```
## Docker Compose

### Start the Containers
```bash
docker-compose up
```

### Stop and Destroy the Containers
```bash
docker-compose down
```

## Docker Images
* OnPrem Server - [timveil/oo-docker-onprem-server](https://hub.docker.com/r/timveil/oo-docker-onprem-server/)
* OnPrem Collector - [timveil/oo-docker-onprem-collector](https://hub.docker.com/r/timveil/oo-docker-onprem-collector/)
* Agent - [timveil/oo-docker-agent](https://hub.docker.com/r/timveil/oo-docker-agent/)

## Logging In to the OnPrem Server
Once the server is up, you can access the OverOps UI by going to `http://localhost:8080/login.html`. 

The default username and password are as follows: 

|  Field | Value  |
| ------------- | ------------- |
| Username | `admin@takipi.com` |
| Password | `123456` |


## Database Access
Below are connection strings you can use to connect to the various H2 databases using the H2 Console which can be accessed at `http://localhost:8082`.  Both username and password can be left blank.

### Stats Database
```
jdbc:h2:tcp://localhost:5000/takipi
```

### Queue Database
```
jdbc:h2:tcp://localhost:5002/qsql
```

### Primitive Data Store (Not Active)
```
jdbc:h2:tcp://localhost:5003/pds
```

### Dynalite Databases

```
jdbc:h2:tcp://localhost:5001/dynalite_onprem_app_names_id
jdbc:h2:tcp://localhost:5001/dynalite_onprem_applications
jdbc:h2:tcp://localhost:5001/dynalite_onprem_badges
jdbc:h2:tcp://localhost:5001/dynalite_onprem_cerebro_snapshots
jdbc:h2:tcp://localhost:5001/dynalite_onprem_chronos
jdbc:h2:tcp://localhost:5001/dynalite_onprem_classes_seen
jdbc:h2:tcp://localhost:5001/dynalite_onprem_classpaths
jdbc:h2:tcp://localhost:5001/dynalite_onprem_classpaths_id
jdbc:h2:tcp://localhost:5001/dynalite_onprem_client_names
jdbc:h2:tcp://localhost:5001/dynalite_onprem_collections_maps
jdbc:h2:tcp://localhost:5001/dynalite_onprem_concurrent_locks
jdbc:h2:tcp://localhost:5001/dynalite_onprem_connect_service_tokens
jdbc:h2:tcp://localhost:5001/dynalite_onprem_contexts
jdbc:h2:tcp://localhost:5001/dynalite_onprem_contexts_id
jdbc:h2:tcp://localhost:5001/dynalite_onprem_counters
jdbc:h2:tcp://localhost:5001/dynalite_onprem_daemon_processes
jdbc:h2:tcp://localhost:5001/dynalite_onprem_delayed_hits
jdbc:h2:tcp://localhost:5001/dynalite_onprem_deployments
jdbc:h2:tcp://localhost:5001/dynalite_onprem_domain_auth_settings
jdbc:h2:tcp://localhost:5001/dynalite_onprem_domino_classes
jdbc:h2:tcp://localhost:5001/dynalite_onprem_domino_identifiers
jdbc:h2:tcp://localhost:5001/dynalite_onprem_domino_packages
jdbc:h2:tcp://localhost:5001/dynalite_onprem_domino_patterns
jdbc:h2:tcp://localhost:5001/dynalite_onprem_email_settings
jdbc:h2:tcp://localhost:5001/dynalite_onprem_extra_emails
jdbc:h2:tcp://localhost:5001/dynalite_onprem_flash_hits
jdbc:h2:tcp://localhost:5001/dynalite_onprem_flash_hits_created
jdbc:h2:tcp://localhost:5001/dynalite_onprem_global_settings
jdbc:h2:tcp://localhost:5001/dynalite_onprem_hits
jdbc:h2:tcp://localhost:5001/dynalite_onprem_hits_pending
jdbc:h2:tcp://localhost:5001/dynalite_onprem_jars
jdbc:h2:tcp://localhost:5001/dynalite_onprem_jars_id
jdbc:h2:tcp://localhost:5001/dynalite_onprem_jars_pending_apps
jdbc:h2:tcp://localhost:5001/dynalite_onprem_jira_settings
jdbc:h2:tcp://localhost:5001/dynalite_onprem_jvm_processes
jdbc:h2:tcp://localhost:5001/dynalite_onprem_labels
jdbc:h2:tcp://localhost:5001/dynalite_onprem_login_tokens
jdbc:h2:tcp://localhost:5001/dynalite_onprem_magic_pixel
jdbc:h2:tcp://localhost:5001/dynalite_onprem_mail_actions_tokens
jdbc:h2:tcp://localhost:5001/dynalite_onprem_metrics_contexts_metadatas
jdbc:h2:tcp://localhost:5001/dynalite_onprem_metrics_metadatas
jdbc:h2:tcp://localhost:5001/dynalite_onprem_metrics_pluto_specs
jdbc:h2:tcp://localhost:5001/dynalite_onprem_metrics_rules
jdbc:h2:tcp://localhost:5001/dynalite_onprem_new_relic_subscribe
jdbc:h2:tcp://localhost:5001/dynalite_onprem_new_tailor_requests
jdbc:h2:tcp://localhost:5001/dynalite_onprem_notes
jdbc:h2:tcp://localhost:5001/dynalite_onprem_notifications
jdbc:h2:tcp://localhost:5001/dynalite_onprem_overmind_snapshots
jdbc:h2:tcp://localhost:5001/dynalite_onprem_pack_history
jdbc:h2:tcp://localhost:5001/dynalite_onprem_packs
jdbc:h2:tcp://localhost:5001/dynalite_onprem_path_stack
jdbc:h2:tcp://localhost:5001/dynalite_onprem_pending_sharee_signup_token
jdbc:h2:tcp://localhost:5001/dynalite_onprem_preset_alert_settings
jdbc:h2:tcp://localhost:5001/dynalite_onprem_presets
jdbc:h2:tcp://localhost:5001/dynalite_onprem_protobuffer_elements_references
jdbc:h2:tcp://localhost:5001/dynalite_onprem_recording_states
jdbc:h2:tcp://localhost:5001/dynalite_onprem_request_pack_ids
jdbc:h2:tcp://localhost:5001/dynalite_onprem_request_stats_pending
jdbc:h2:tcp://localhost:5001/dynalite_onprem_requests
jdbc:h2:tcp://localhost:5001/dynalite_onprem_requests_checksum
jdbc:h2:tcp://localhost:5001/dynalite_onprem_requests_id
jdbc:h2:tcp://localhost:5001/dynalite_onprem_requests_pending
jdbc:h2:tcp://localhost:5001/dynalite_onprem_requests_pluto_specs
jdbc:h2:tcp://localhost:5001/dynalite_onprem_requests_rules
jdbc:h2:tcp://localhost:5001/dynalite_onprem_rest_api_keys
jdbc:h2:tcp://localhost:5001/dynalite_onprem_service_jars
jdbc:h2:tcp://localhost:5001/dynalite_onprem_service_pack_information
jdbc:h2:tcp://localhost:5001/dynalite_onprem_service_request_information
jdbc:h2:tcp://localhost:5001/dynalite_onprem_service_user_packs_information
jdbc:h2:tcp://localhost:5001/dynalite_onprem_service_user_requests_information
jdbc:h2:tcp://localhost:5001/dynalite_onprem_service_with_threshold
jdbc:h2:tcp://localhost:5001/dynalite_onprem_services
jdbc:h2:tcp://localhost:5001/dynalite_onprem_services_filters
jdbc:h2:tcp://localhost:5001/dynalite_onprem_services_user_information
jdbc:h2:tcp://localhost:5001/dynalite_onprem_silver_namer
jdbc:h2:tcp://localhost:5001/dynalite_onprem_silver_namer_history
jdbc:h2:tcp://localhost:5001/dynalite_onprem_slowdown_subscribe
jdbc:h2:tcp://localhost:5001/dynalite_onprem_source_code
jdbc:h2:tcp://localhost:5001/dynalite_onprem_standalone_payment_tokens
jdbc:h2:tcp://localhost:5001/dynalite_onprem_stripe_customers
jdbc:h2:tcp://localhost:5001/dynalite_onprem_tiny_keys_pending
jdbc:h2:tcp://localhost:5001/dynalite_onprem_tinykeys
jdbc:h2:tcp://localhost:5001/dynalite_onprem_udf_functions
jdbc:h2:tcp://localhost:5001/dynalite_onprem_udf_libraries
jdbc:h2:tcp://localhost:5001/dynalite_onprem_uncategorized_exceptions
jdbc:h2:tcp://localhost:5001/dynalite_onprem_user_permission_groups
jdbc:h2:tcp://localhost:5001/dynalite_onprem_user_service_settings
jdbc:h2:tcp://localhost:5001/dynalite_onprem_users
jdbc:h2:tcp://localhost:5001/dynalite_onprem_white_tigers
jdbc:h2:tcp://localhost:5001/dynalite_onprem_zeuson_class_bytes
```