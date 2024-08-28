 #!/bin/bash
curl -X POST https://fem121-eiffel004.lmera.ericsson.se:8443/jenkins/job/network-model-transformer-integration_Parent_Update_test/build --user cdsadm100:00caba7fe891ad8b073877af9bc0cecb --data-urlencode json='{"parameter": [{"name":"SKIP_GIT_PUSH", "value":false}]}'
