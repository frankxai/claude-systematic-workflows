#!/bin/bash
set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}Claude Systematic Workflows Installer${NC}"
echo "======================================"
echo ""

# Detect Claude directory
if [ -d "$HOME/.claude" ]; then
    CLAUDE_DIR="$HOME/.claude"
else
    echo "Error: Could not find ~/.claude directory"
    exit 1
fi

echo -e "${YELLOW}Installing to: $CLAUDE_DIR${NC}"
echo ""

# Create directories
mkdir -p "$CLAUDE_DIR"/{skills,commands}

# Copy skills
echo "Installing skills..."
cp -r skills/* "$CLAUDE_DIR/skills/" 2>/dev/null || echo "  (no new skills)"

# Copy commands
echo "Installing commands..."
cp -r commands/* "$CLAUDE_DIR/commands/" 2>/dev/null || echo "  (no new commands)"

# Optionally copy hooks
read -p "Install git hooks for quality enforcement? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    if [ -d ".git" ]; then
        echo "Installing git hooks..."
        cp hooks/* .git/hooks/ 2>/dev/null || true
        chmod +x .git/hooks/* 2>/dev/null || true
        echo -e "${GREEN}✓ Git hooks installed${NC}"
    else
        echo -e "${YELLOW}! Not in a git repo, skipping hooks${NC}"
    fi
fi

echo ""
echo -e "${GREEN}✓ Installation complete!${NC}"
echo ""
echo -e "${YELLOW}Test with:${NC}"
echo "  /dev \"add feature\""
echo "  /check"
echo "  /ship"
echo ""
echo -e "${GREEN}Skills auto-activate when relevant:${NC}"
echo "  - test-driven-development"
echo "  - systematic-debugging"
echo "  - verification-before-completion"
