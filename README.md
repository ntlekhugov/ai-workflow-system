# 3-File AI Workflow System

A lightweight, effective system for AI-assisted software development using just three markdown files.

## 🚀 Quick Install

```bash
curl -sSL https://raw.githubusercontent.com/ntlekhugov/ai-workflow-system/main/setup.sh | bash
```

## 📋 What is This?

The 3-File AI Workflow System is a minimalist approach to giving AI coding assistants the context they need to be productive. Instead of complex folder structures and dozens of configuration files, we use just three markdown files:

1. **README.md** - Vision, architecture, and stable context
2. **PLANNING.md** - Strategic roadmap and feature planning  
3. **TASKS.md** - Current sprint execution and progress tracking

## 🎯 Why This Approach?

- **Simplicity**: Just 3 files to maintain vs dozens
- **Flexibility**: Works with any tech stack or project type
- **AI-Optimized**: Structured for maximum AI comprehension
- **Low Friction**: Update only what changes
- **Git-Friendly**: Plain text files work perfectly with version control

## 📦 What's Included

### Instruction Templates
- `AI-README-INSTRUCTION.md` - Creates comprehensive README files
- `AI-PLANNING-INSTRUCTION.md` - Creates strategic planning documents
- `AI-TASKS-INSTRUCTION.md` - Creates execution tracking files

### Claude Code Commands
- `/init-project` - Initialize all three files
- `/create-readme` - Create AI-enhanced README
- `/create-planning` - Create planning document
- `/create-tasks` - Create task tracker
- `/update-tasks` - Update current progress
- `/git-workflow` - Git best practices

### Setup Tools
- Automatic installation script
- Git project initializer
- Claude Code integration

## 🛠️ Installation

### Automatic (Recommended)

```bash
curl -sSL https://raw.githubusercontent.com/ntlekhugov/ai-workflow-system/main/setup.sh | bash
```

### Manual

1. Clone this repository
2. Copy `instructions/` to `~/.ai-workflow/instructions/`
3. Copy `commands/` to `~/.claude/commands/`
4. Copy `claude-code/CLAUDE.md` to `~/.claude/CLAUDE.md`

## 📖 Usage

### Starting a New Project

```bash
# Option 1: With git initialization
~/.ai-workflow/init-git-project.sh my-awesome-project
cd my-awesome-project

# Option 2: In existing directory
cd my-project
# Then use /init-project in Claude Code
```

### In Claude Code

1. Use `/init-project` to set up all three files
2. Work through your sprints using `/update-tasks`
3. Keep files updated as you progress

### File Update Frequency

| File | Update Frequency | When to Update |
|------|-----------------|----------------|
| README.md | Rarely | Architecture changes, major decisions |
| PLANNING.md | Weekly | Sprint planning, priority changes |
| TASKS.md | Daily | Task progress, blockers, completions |

## 🔄 Workflow Example

```
Monday Morning:
1. Check TASKS.md for current sprint
2. Update "Currently Working On"
3. Start coding

During Development:
- Update progress in TASKS.md
- Mark tasks complete
- Add blockers if found

Friday Afternoon:
1. Review week in TASKS.md
2. Update PLANNING.md if needed
3. Plan next sprint

Anytime:
- Architecture change? Update README.md
- New epic? Add to PLANNING.md
- Task done? Check it off in TASKS.md
```

## 🤝 Comparison with Agent OS

| Feature | 3-File System | Agent OS |
|---------|--------------|----------|
| Files to maintain | 3 | 15+ |
| Setup complexity | Simple | Complex |
| Learning curve | Minutes | Hours |
| Customization | Easy | Extensive |
| Best for | Solo/small teams | Large teams |

## 📝 Philosophy

> "The best system is the one you'll actually use."

This system embraces:
- **Minimalism**: Only essential files
- **Practicality**: Real-world tested
- **Flexibility**: Adapt to your needs
- **Sustainability**: Easy to maintain long-term

## 🔧 Customization

Feel free to:
- Modify instruction templates for your needs
- Add or remove sections
- Create additional commands
- Adapt the workflow to your team

## 🚀 Getting Started

After installation:

1. **New Project Setup**
   ```bash
   ~/.ai-workflow/init-git-project.sh my-project
   cd my-project
   ```

2. **Initialize with Claude Code**
   Open the project in Claude Code and run:
   ```
   /init-project
   ```

3. **Start Development**
   - Follow prompts to set up your three files
   - Begin with tasks from PLANNING.md
   - Update TASKS.md as you work

## 📚 Documentation

### For Developers
- See `QUICK_REFERENCE.md` for a cheat sheet
- Check `instructions/` folder for template details
- Read individual command files in `commands/`

### For Contributors
- Fork this repository
- Create your feature branch
- Submit a pull request

## 🤖 AI Assistant Integration

This system works with:
- **Claude Code** (Full command integration)
- **Cursor** (Can adapt commands)
- **GitHub Copilot** (Use as context)
- **Any AI IDE** (Follow the templates)

## 📄 License

MIT License - Use freely in your projects

## 🙏 Acknowledgments

Inspired by [Agent OS](https://github.com/buildermethods/agent-os) but simplified for developers who value flow over process.

---

**Created by:** ntlekhugov  
**Remember**: The goal is sustainable AI-assisted development, not perfect documentation. Keep it simple, keep it updated, keep shipping.