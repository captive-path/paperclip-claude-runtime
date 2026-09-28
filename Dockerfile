FROM ghcr.io/paperclipai/paperclip@sha256:a02ac35ac41df911af477422ea0e781cf41d2b2c600c66f0a5ac9d8c63f52c2c

LABEL org.opencontainers.image.source="https://github.com/captive-path/paperclip-claude-runtime"

RUN npm install --global --omit=dev @anthropic-ai/claude-code@2.1.283 \
    && test "$(claude --version)" = "2.1.283 (Claude Code)"
