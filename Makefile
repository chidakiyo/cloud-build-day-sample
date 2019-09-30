run-sample1: _envcheck _bucketcheck
	 gcloud builds submit \
	 --config sample1/cloud-build.yaml \
	 --project $(PROJECT_ID) \
	 --substitutions _BUCKET=$(BUCKET) \
	 .

# check ------------------

.SILENT:
_envcheck:
ifeq ($(PROJECT_ID),)
	echo "=================================="
	echo "環境変数 'PROJECT_ID' が未設定です。"
	echo "=================================="
	exit 1
endif

_bucketcheck:
ifeq ($(BUCKET),)
	echo "=================================="
	echo "環境変数 'BUCKET' が未設定です。"
	echo "=================================="
	exit 1
endif

