# Working with Google Cloud

Source:

http://storm.cis.fordham.edu/ji/cisc5550/

Files copied from Cloud Computing class:

1. templates/index.html

2. todolist.db

3. todolist.py

The todolist app will run on default port 5000.

### Script to create a VM on Google Cloud Platform and run a Flask app automatically:

4. Download ginstall.sh to your local computer and run:

`gcloud compute instances create test-inst --machine-type n1-standard-2 --image-family debian-8 --image-project debian-cloud --tags http-server --metadata-from-file startup-script=./ginstall.sh`
