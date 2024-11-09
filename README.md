# mock-api-server


Get Started
-----------
#### Requirements

To run this application on your machine, you need at least:
- node

---------------------

Stubby
-----------
Brief description of Stubby as a mock server used for API stubbing, helpful in local and CI environments.
Install Stubby globally with npm:

Installation
----------
```
npm install -g stubby
```

Example Configuration Structure
------------
```
project-root/
├── stubby/                  # Main folder for Stubby configurations and stubs
│   ├── service.yaml         # Main YAML file with service definitions
│   └── json/                # Folder for individual JSON stub files
│       ├── user_stub.json   # Example stub for user-related requests
│       └── order_stub.json  # Example stub for order-related requests
└── README.md  
```

Usage
------------
- [`-d`] stubby/service.yaml: Specifies the path to the YAML file (stubby/service.yaml) that Stubby will use to define the stubbed API endpoints. This file typically includes the configuration for request and response pairs that Stubby will serve.
- [`-s`] 59040: Sets the port on which Stubby's Stubs service will listen (in this case, port 59040). This is the port that clients can use to make requests to the mocked endpoints defined in the YAML file.   

```
stubby -d stubby/service.yaml -s 59040
```

---------------------

Mockoon
-----------
a free, open-source desktop tool for creating mock APIs quickly. It's especially useful for testing API requests, setting up endpoints without backend dependencies, and simulating responses.

Installation
----------
```
$ npm install -g @mockoon/cli
```

Example Configuration Structure
----------
```
project-root/
├── mockoon/
│   └── service.json
└── README.md  
```

Usage
------------
- [`--data`] Path(s) or URL(s) to your Mockoon file(s)
- [`--port`] Override environment(s) port(s)

```
mockoon-cli start --data mockoon/service.json --port 59040
```