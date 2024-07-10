# Real Time Code Editor

**Real Time Code Editor** is an innovative web application built with Erlang, designed to provide a real-time collaborative code editing environment. This project leverages the power of Erlang's concurrency model and the Cowboy HTTP server to handle multiple live connections efficiently. Users can collaboratively edit code in real-time, with changes reflected instantly across all connected clients.

## Features

- Real-time collaborative code editing
- Efficient WebSocket-based updates
- Robust error handling and logging
- Scalable and fault-tolerant design

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/RealTimeCodeEditor.git
    cd RealTimeCodeEditor
    ```

2. Install dependencies:
    ```bash
    rebar3 get-deps
    ```

3. Compile the project:
    ```bash
    rebar3 compile
    ```

4. Run the server:
    ```bash
    rebar3 shell
    ```

## Usage

### API Endpoints

- **GET /documents**: Retrieve all documents
- **POST /documents**: Create a new document
- **GET /documents/:id**: Retrieve a specific document
- **PUT /documents/:id**: Update a document
- **DELETE /documents/:id**: Delete a document

### WebSocket Endpoints

- **/ws/code**: WebSocket endpoint for real-time code editing

## Contributing

We welcome contributions from everyone. Please read our [CONTRIBUTING.md](CONTRIBUTING.md) for more details.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
