#!/bin/bash  

skypeLink="https://github-production-release-asset-2e65be.s3.amazonaws.com/77880841/16a14c7c-45a6-11e7-81ac-28673f670d57?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20171022%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20171022T093955Z&X-Amz-Expires=300&X-Amz-Signature=98b29dcd8849047f0e774fa1dd00353c8d8c60e4927c6273aa9afba5f5e3d14b&X-Amz-SignedHeaders=host&actor_id=22359905&response-content-disposition=attachment%3B%20filename%3Dosx-arc-collection_1.4.3_amd64.deb&response-content-type=application%2Foctet-stream"
sudo wget -O sktpe.deb --no-check-certificate -c ${skypeLink}
sudo dpkg -i skypeforlinux-64.deb


