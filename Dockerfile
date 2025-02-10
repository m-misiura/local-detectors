# Use the official Rust image as a base
FROM rust:latest

# Set the working directory to /app
WORKDIR /app

# Copy the Cargo.toml file into the working directory
COPY Cargo.toml .

# Copy the source code
COPY src/ /app/src/

# Build the Rust application
RUN cargo build --release

# Expose the port that the application will listen on
EXPOSE 8080

# Run the command to start the application when the container is launched
CMD ["/app/target/release/local-detectors"]
