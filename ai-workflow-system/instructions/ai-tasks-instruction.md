# Instruction: Create AI-Enhanced TASKS File

You are tasked with creating a TASKS.md file that serves as the execution tracker and current focus for the project. This file is the most frequently updated document and maintains momentum during development sessions.

## TASKS.md Structure Requirements

Create a TASKS.md with these exact sections in order:

### 1. Tasks Header
```markdown
# Current Tasks & Progress

> **AI Context**: This is our active workstream. Check here first to understand current focus.
> For upcoming work see PLANNING.md. For project overview see README.md.

**Current Sprint**: [Sprint name/number]
**Sprint Duration**: [Start Date] - [End Date]
**Last Updated**: [Date + Time]
**Sprint Goal**: [One sentence describing what we're shipping]
```

### 2. Sprint Overview
```markdown
## Sprint Overview

### 🎯 Current Focus
**Epic**: [Current epic from PLANNING.md]
**Phase**: [Current phase from PLANNING.md]
**Objective**: [What we're trying to accomplish this sprint]

### 📊 Sprint Stats
- **Planned**: [X] tasks
- **Completed**: [Y] tasks
- **In Progress**: [Z] tasks
- **Blocked**: [B] tasks
- **Completion**: [Y/X]% 

### 🚀 Definition of Done
- [ ] Code implemented and working
- [ ] Tests written and passing
- [ ] Code reviewed (or self-reviewed)
- [ ] Documentation updated
- [ ] Deployed to development environment
```

### 3. Active Tasks
```markdown
## Active Tasks

### 🔴 Priority Tasks (Do First)
- [ ] **[Task Name]** `[effort]` 
  - Description: [What needs to be done]
  - Acceptance: [How we know it's done]
  - Technical: [Implementation approach]
  - Files: `[likely files to modify]`

### 🟡 Current Sprint (Do Next)
- [x] ~~**[Completed Task]**~~ ✅ [Completion date]
- [ ] **[Task Name]** `[effort]`
  - Description: [What needs to be done]
  - Acceptance: [How we know it's done]
  - Dependencies: [What must be done first]

### 🔵 Sprint Backlog (If Time Allows)
- [ ] **[Task Name]** `[effort]`
  - Description: [What needs to be done]
  - Note: [Any special considerations]
```

### 4. In Progress Tracking
```markdown
## In Progress

### Currently Working On: [Task Name]
**Started**: [Date/Time]
**Branch**: `feature/[branch-name]`
**Status**: [What's been done, what's left]

#### Progress Log
- [x] Step 1: [Completed step]
- [x] Step 2: [Completed step]
- [ ] Step 3: [Next step]
- [ ] Step 4: [Future step]

#### Notes
- [Any important discoveries]
- [Decisions made during implementation]
- [Things to remember]

#### Code Context
```
Files modified:
- src/components/[Component].tsx - [what changed]
- src/api/[endpoint].ts - [what changed]
- tests/[test].spec.ts - [what changed]
```
```

### 5. Blockers & Issues
```markdown
## Blockers & Issues

### 🚧 Active Blockers
| Task | Blocker | Since | Action Needed |
|------|---------|--------|---------------|
| [Task name] | [What's blocking] | [Date] | [What would unblock] |

### ⚠️ Risks & Concerns
- **[Concern]**: [Description and potential impact]
- **[Technical Debt]**: [What we're accumulating and why]

### 💡 Questions for Team
- [ ] [Question that needs answering]
- [ ] [Decision that needs making]
```

### 6. Completed This Sprint
```markdown
## Completed This Sprint

### Week of [Date]
- [x] ~~**[Task Name]**~~ ✅ [Date] - [Brief outcome/learning]
- [x] ~~**[Task Name]**~~ ✅ [Date] - [Brief outcome/learning]

### Achievements
- 🎉 [Major milestone reached]
- 📈 [Metric improved]
- 🐛 [Significant bug fixed]
```

### 7. Task Templates
```markdown
## Task Templates

### Feature Task Template
- [ ] **[Feature Name]** `[effort]`
  - Description: Build [what] that allows users to [action]
  - Acceptance: 
    - [ ] User can [specific action]
    - [ ] [Edge case] is handled
    - [ ] Error states show [message]
  - Technical: [Approach]
  - Tests: [What to test]

### Bug Fix Template  
- [ ] **Fix: [Bug description]** `[effort]`
  - Issue: [What's broken]
  - Root Cause: [Why it's broken]
  - Fix: [How to fix]
  - Test: [How to verify]

### Refactor Template
- [ ] **Refactor: [What's being refactored]** `[effort]`
  - Current: [Current implementation]
  - Proposed: [New approach]
  - Reason: [Why refactor]
  - Risk: [What could break]
```

### 8. Daily Standup Notes
```markdown
## Daily Standup Notes

### [Today's Date]
**Yesterday**: [What was completed]
**Today**: [What's planned]
**Blockers**: [Any blockers]
**Help Needed**: [Any assistance required]

[Previous days in descending order]
```

### 9. Sprint Retrospective
```markdown
## Sprint Retrospective

### What Went Well
- [Success or smooth process]
- [Good decision or practice]

### What Could Improve  
- [Challenge faced]
- [Process that needs work]

### Action Items
- [ ] [Specific improvement to make]
- [ ] [Process to implement]
```

### 10. Quick Reference
```markdown
## Quick Reference

### Effort Sizing
- `XS` = 1-2 hours
- `S` = 2-4 hours  
- `M` = 1 day
- `L` = 2-3 days
- `XL` = 1 week

### Priority Levels
- 🔴 **Critical**: Blocking other work
- 🟡 **Normal**: Regular sprint work
- 🔵 **Stretch**: If time allows

### Status Indicators
- [ ] Not started
- [~] In progress (use sparingly, prefer moving to "In Progress" section)
- [x] ~~Completed~~ ✅
- [-] ~~Cancelled~~ ❌
- [!] Blocked 🚧

### Common Commands
```bash
# Start work on a task
git checkout -b feature/task-name

# Check progress
npm test
npm run lint

# Deploy to dev
npm run deploy:dev
```
```

## Generation Instructions

When creating this TASKS.md:

1. **Import from PLANNING**: Pull in appropriate tasks based on:
   - Current phase
   - Completed dependencies  
   - Priority order
   - Team capacity

2. **Break Down Features**: Convert PLANNING.md features into executable tasks:
   - Each task should be completable in one sitting
   - Include clear acceptance criteria
   - Add technical approach hints

3. **Maintain Focus**: 
   - Limit active tasks to 3-5
   - Keep sprint scope realistic
   - One main epic per sprint

4. **Update Frequency**:
   - Task status: Immediately when changed
   - Progress log: During implementation
   - Standup notes: Daily
   - Sprint stats: Daily

5. **Task Writing Guidelines**:
   - Start with a verb (Build, Fix, Refactor, Add, Update)
   - Be specific about what and where
   - Include acceptance criteria
   - Add effort estimates

## AI Coding Session Best Practices

When an AI uses this file during a coding session:

### Starting a Session
1. Read "Currently Working On" section first
2. Check for any blockers
3. Review progress log to understand context
4. Continue from last stopping point

### During Development
1. Update progress log with completed steps
2. Add notes about decisions or discoveries
3. Move tasks to appropriate status
4. Document any new blockers immediately

### Ending a Session
1. Update "Currently Working On" with current state
2. List files modified
3. Add notes for next session
4. Commit changes with descriptive message

## Task Lifecycle

```
Sprint Backlog → Current Sprint → In Progress → Completed
                      ↓
                  Blocked (if issues arise)
```

## Integration with Other Files

- **FROM PLANNING.md**: Import epics and features for current sprint
- **TO README.md**: Update "Current Sprint Focus" section
- **REFER TO README.md**: For technical patterns and conventions

## Remember

TASKS.md is your execution heartbeat:
- Update it frequently (multiple times per day)
- Keep it focused on current work only
- Move completed items to archive after sprint
- Use it to maintain context between coding sessions

The goal is to always know exactly what to work on next and maintain momentum throughout the sprint.

## Usage Example

To use this instruction with an AI assistant:

```
"Read AI-TASKS-INSTRUCTION.md and create a TASKS.md for my project.

Current context:
- Sprint: [Name/number]
- Working on: [Current epic from PLANNING.md]
- Team size: [Number of developers]
- Sprint length: [1 or 2 weeks]
- Previous sprint completed: [What was done]
- Current blockers: [Any known issues]"
```

The AI will create an actionable task tracker that maintains focus and momentum throughout your sprint.