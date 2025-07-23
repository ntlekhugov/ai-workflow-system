#!/bin/bash

# AI Workflow System Setup Script
# This script installs the 3-file AI workflow system for Claude Code

set -e  # Exit on error

echo "🚀 AI Workflow System Setup"
echo "==========================="
echo ""

# Base URL for your GitHub repo (update this with your actual repo)
BASE_URL="https://raw.githubusercontent.com/ntlekhugov/ai-workflow-system/main"

# Create directories
echo "📁 Creating directories..."
mkdir -p "$HOME/.ai-workflow/instructions"
mkdir -p "$HOME/.claude/commands"

# Download instruction files
echo ""
echo "📥 Downloading instruction files..."

for instruction in AI-README-INSTRUCTION AI-PLANNING-INSTRUCTION AI-TASKS-INSTRUCTION; do
    echo "  Downloading ${instruction}.md..."
    curl -s -o "$HOME/.ai-workflow/instructions/${instruction}.md" \
         "${BASE_URL}/instructions/${instruction}.md"
    echo "  ✓ ${instruction}.md"
done

# Download Claude Code commands
echo ""
echo "📥 Downloading Claude Code commands..."

for cmd in init-project create-readme create-planning create-tasks; do
    echo "  Downloading ${cmd}.md..."
    curl -s -o "$HOME/.claude/commands/${cmd}.md" \
         "${BASE_URL}/commands/${cmd}.md"
    echo "  ✓ ${cmd}.md"
done

# Download Claude configuration
echo ""
echo "📥 Setting up Claude Code configuration..."

# Backup existing CLAUDE.md if it exists
if [ -f "$HOME/.claude/CLAUDE.md" ]; then
    echo "  Backing up existing CLAUDE.md to CLAUDE.md.backup"
    cp "$HOME/.claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md.backup"
fi

# Download and merge CLAUDE.md
curl -s -o "$HOME/.claude/CLAUDE_WORKFLOW.md" \
     "${BASE_URL}/claude-code/CLAUDE.md"

# If CLAUDE.md exists, append our content
if [ -f "$HOME/.claude/CLAUDE.md" ]; then
    echo "" >> "$HOME/.claude/CLAUDE.md"
    echo "" >> "$HOME/.claude/CLAUDE.md"
    cat "$HOME/.claude/CLAUDE_WORKFLOW.md" >> "$HOME/.claude/CLAUDE.md"
    rm "$HOME/.claude/CLAUDE_WORKFLOW.md"
    echo "  ✓ Appended to existing CLAUDE.md"
else
    mv "$HOME/.claude/CLAUDE_WORKFLOW.md" "$HOME/.claude/CLAUDE.md"
    echo "  ✓ Created new CLAUDE.md"
fi

# Create a git-aware initialization script
echo ""
echo "📝 Creating git integration helper..."

cat > "$HOME/.ai-workflow/init-git-project.sh" << 'EOF'
#!/bin/bash
# Initialize a new project with AI workflow and git

if [ -z "$1" ]; then
    echo "Usage: init-git-project.sh <project-name>"
    exit 1
fi

PROJECT_NAME=$1
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME"

# Initialize git
git init

# Create .gitignore
cat > .gitignore << 'GITIGNORE'
# AI Workflow
.ai-session/
*.backup

# Common
.env
.env.local
node_modules/
dist/
build/
*.log
.DS_Store
GITIGNORE

# Create initial workflow files
touch README.md PLANNING.md TASKS.md

# Initial commit
git add .
git commit -m "Initial commit with AI workflow structure"

echo "✅ Project '$PROJECT_NAME' initialized with AI workflow!"
echo "📁 Created: README.md, PLANNING.md, TASKS.md"
echo "🔗 Git repository initialized"
echo ""
echo "Next steps:"
echo "1. cd $PROJECT_NAME"
echo "2. Use Claude Code with /init-project to populate the files"
EOF

chmod +x "$HOME/.ai-workflow/init-git-project.sh"

echo ""
echo "✅ AI Workflow System installation complete!"
echo ""
echo "📍 Files installed to:"
echo "   ~/.ai-workflow/instructions/  - Instruction templates"
echo "   ~/.claude/commands/           - Claude Code commands"
echo "   ~/.claude/CLAUDE.md          - Claude configuration"
echo ""
echo "🚀 Quick Start:"
echo ""
echo "1. For new projects with git:"
echo "   ~/.ai-workflow/init-git-project.sh my-project"
echo ""
echo "2. In Claude Code, use these commands:"
echo "   /init-project     - Set up all three workflow files"
echo "   /create-readme    - Create AI-enhanced README"
echo "   /create-planning  - Create strategic PLANNING file"
echo "   /create-tasks     - Create execution TASKS file"
echo ""
echo "Learn more at https://github.com/ntlekhugov/ai-workflow-system"
