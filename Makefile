run-stubby:
	stubby -d stubby/service.yaml -s 59040

run-mockoon:
	mockoon-cli start --data mockoon/service.json --port 59040