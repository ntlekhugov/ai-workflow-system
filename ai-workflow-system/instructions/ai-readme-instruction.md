# Instruction: Create AI-Enhanced README

You are tasked with creating a README.md file that serves as the primary context document for both human developers and AI coding assistants. This README should be the single source of truth for understanding the project.

## README Structure Requirements

Create a README.md with these exact sections in order:

### 1. Project Header
```markdown
# [Project Name]

> **AI Assistant Notice**: This README is optimized for AI-assisted development. 
> See sections marked with 🤖 for AI-specific context.

**One-line description**: [What this project does in one sentence]
**Status**: [Planning/Active Development/Beta/Production]
**Last Updated**: [Date]
```

### 2. Product Specification 🤖
```markdown
## Product Specification 🤖

### What We're Building
[2-3 sentences explaining the product vision, who it's for, and what problem it solves]

### Target Users
- **Primary**: [User type] who need [specific need]
- **Secondary**: [User type] who want [specific want]

### Core Value Proposition
[1-2 sentences on why this is better than alternatives]
```

### 3. Features Overview
```markdown
## Features Overview

### Implemented ✅
- **[Feature Name]**: [One-line description]
  - Technical: [How it's implemented]
  - User-facing: [What users see/experience]

### In Progress 🚧
- **[Feature Name]**: [Description] → See TASKS.md

### Planned 📋
- **[Feature Name]**: [Description] → See PLANNING.md
```

### 4. Technical Architecture 🤖
```markdown
## Technical Architecture 🤖

### Stack Overview
| Layer | Technology | Why |
|-------|------------|-----|
| Frontend | [e.g., Next.js 14] | [Reason] |
| Backend | [e.g., Node.js] | [Reason] |
| Database | [e.g., PostgreSQL] | [Reason] |
| Styling | [e.g., Tailwind CSS] | [Reason] |
| Deployment | [e.g., Vercel] | [Reason] |

### Project Structure
\`\`\`
src/
├── app/          # [Description]
├── components/   # [Description]
├── lib/          # [Description]
└── [other]/      # [Description]
\`\`\`

### Key Patterns 🔑
- **State Management**: [Pattern used and why]
- **API Design**: [REST/GraphQL/tRPC and pattern]
- **Authentication**: [Method and implementation]
- **Error Handling**: [Approach]
- **Data Validation**: [Library/approach]
```

### 5. Development Workflow 🤖
```markdown
## Development Workflow 🤖

### File Organization
- Components: [Naming convention, structure]
- API Routes: [Pattern]
- Utilities: [Where they live]
- Types: [TypeScript approach]

### Code Conventions
- **Component Pattern**: [Functional/Class/etc]
- **Async Handling**: [Promises/async-await pattern]
- **Import Order**: [Convention]
- **Comment Style**: Use "AI-CONTEXT:" for AI-specific hints

### Testing Strategy
- Unit Tests: [Tool and pattern]
- Integration Tests: [Approach]
- E2E Tests: [If applicable]
```

### 6. Key Decisions Log
```markdown
## Key Decisions Log

| Date | Decision | Rationale | Impact |
|------|----------|-----------|---------|
| YYYY-MM-DD | Chose [Technology] | [Why] | [What this means] |
| YYYY-MM-DD | Architected [Feature] as [Pattern] | [Why] | [Implications] |
```

### 7. AI Assistant Context 🤖
```markdown
## AI Assistant Context 🤖

### Current Sprint Focus
**Working on**: [Current feature/area]
**Blockers**: [Any blockers or constraints]
**Next up**: [What's coming after current work]

### Important Context
- [Any quirks or non-obvious architectural decisions]
- [Performance considerations]
- [Security considerations]
- [Known technical debt]

### Related Files
- **PLANNING.md**: Contains epics and future features
- **TASKS.md**: Contains current sprint tasks and progress
- **[Other].md**: [Description if applicable]

### AI Coding Instructions
When working on this codebase:
1. Always check TASKS.md for current sprint priorities
2. Follow the patterns established in Technical Architecture
3. Maintain the conventions listed in Development Workflow
4. Update this README when making architectural changes
5. Add decision log entries for significant choices
```

### 8. Standard Sections
```markdown
## Getting Started

### Prerequisites
[List with versions]

### Installation
\`\`\`bash
# Clear, step-by-step commands
\`\`\`

### Environment Variables
\`\`\`env
# Example .env file with descriptions
KEY=value # Description of what this does
\`\`\`

### Running the Project
\`\`\`bash
# Development
npm run dev

# Production
npm run build && npm start
\`\`\`

## Contributing
[Basic guidelines or link to CONTRIBUTING.md]

## License
[License type]
```

## Generation Instructions

When creating this README:

1. **Be Specific**: Replace all placeholders with actual project details
2. **Keep It Current**: Add "Last Updated" date
3. **Think AI-First**: Write descriptions that give context, not just facts
4. **Use Examples**: When describing patterns, include brief code examples
5. **Link Everything**: Create connections between related concepts
6. **Maintain Hierarchy**: Keep information organized from high-level to specific

## Post-Generation Checklist

After generating, verify:
- [ ] All sections include concrete project information
- [ ] Technical decisions include rationale
- [ ] AI-specific sections are marked with 🤖
- [ ] Current sprint focus is clearly stated
- [ ] All placeholders are replaced with actual content
- [ ] File paths and structure match the actual project

## Remember

This README is a living document that should be updated whenever:
- Architecture changes
- New patterns are established  
- Major features are completed
- Sprint focus changes
- Key decisions are made

The goal is to create a README that allows any AI assistant to understand your project's full context in a single file, while also serving as excellent documentation for human developers.

## Usage Example

To use this instruction with an AI assistant:

```
"Read AI-README-INSTRUCTION.md and create a README.md for my [type of project]. 

Project details:
- Name: [Your project name]
- Type: [Web app/API/Library/etc]
- Main purpose: [What it does]
- Tech stack: [Your technologies]
- Current stage: [Planning/Development/etc]"
```

The AI will then create a comprehensive README following this template, asking for any missing information as needed.