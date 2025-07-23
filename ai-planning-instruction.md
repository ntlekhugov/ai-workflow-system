# Instruction: Create AI-Enhanced PLANNING File

You are tasked with creating a PLANNING.md file that serves as the strategic roadmap for the project. This file bridges the gap between the high-level vision in README.md and the tactical execution in TASKS.md.

## PLANNING.md Structure Requirements

Create a PLANNING.md with these exact sections in order:

### 1. Planning Header
```markdown
# Project Planning & Roadmap

> **AI Context**: This file contains epics and feature planning. 
> For current work, see TASKS.md. For project overview, see README.md.

**Planning Horizon**: [Q1 2024 - Q4 2024]
**Last Updated**: [Date]
**Planning Status**: [Active/Under Review/Approved]
```

### 2. Planning Overview
```markdown
## Planning Overview

### Vision Statement
[1-2 sentences connecting to README's product specification]

### Success Metrics
- **Short-term (3 months)**: [Measurable goal]
- **Mid-term (6 months)**: [Measurable goal]  
- **Long-term (12 months)**: [Measurable goal]

### Constraints & Considerations
- **Technical**: [Any technical limitations]
- **Resource**: [Team size, budget, time]
- **Business**: [Market deadline, competition]
```

### 3. Development Phases
```markdown
## Development Phases

### Phase 1: [Name] (Timeline)
**Theme**: [What this phase achieves]
**Goal**: [Specific deliverable]
**Success Criteria**: [How we know it's done]

### Phase 2: [Name] (Timeline)
**Theme**: [What this phase achieves]
**Goal**: [Specific deliverable]
**Success Criteria**: [How we know it's done]

### Phase 3: [Name] (Timeline)
**Theme**: [What this phase achieves]
**Goal**: [Specific deliverable]
**Success Criteria**: [How we know it's done]
```

### 4. Epics Breakdown
```markdown
## Epics Breakdown

### 🎯 Epic: [Epic Name]
**Priority**: P0/P1/P2
**Phase**: [Which phase this belongs to]
**Status**: Not Started/In Progress/Completed
**Owner**: [Who's responsible]

#### Overview
[2-3 sentences explaining what this epic accomplishes]

#### User Stories
- As a [user type], I want to [action] so that [benefit]
- As a [user type], I want to [action] so that [benefit]

#### Features
- [ ] **[Feature Name]**: [One-line description]
  - Technical: [Implementation approach]
  - Complexity: XS/S/M/L/XL
  - Dependencies: [What must be done first]
- [ ] **[Feature Name]**: [One-line description]
  - Technical: [Implementation approach]
  - Complexity: XS/S/M/L/XL
  - Dependencies: [What must be done first]

#### Success Criteria
- [ ] [Measurable outcome]
- [ ] [Measurable outcome]

#### Technical Considerations
- [Architecture impacts]
- [Performance considerations]
- [Security requirements]

---

[Repeat for each epic]
```

### 5. Feature Prioritization Matrix
```markdown
## Feature Prioritization Matrix

| Feature | Impact | Effort | Priority | Dependencies | Status |
|---------|--------|--------|----------|--------------|--------|
| [Feature Name] | High/Med/Low | XS/S/M/L/XL | P0/P1/P2 | [Dependencies] | 🔴/🟡/🟢 |
| [Feature Name] | High/Med/Low | XS/S/M/L/XL | P0/P1/P2 | [Dependencies] | 🔴/🟡/🟢 |

**Legend**:
- Impact: Business value delivered
- Effort: Development complexity (XS=1 day, S=2-3 days, M=1 week, L=2 weeks, XL=3+ weeks)
- Priority: P0=Critical, P1=Important, P2=Nice-to-have
- Status: 🔴 Not Started | 🟡 In Progress | 🟢 Completed
```

### 6. Technical Debt & Improvements
```markdown
## Technical Debt & Improvements

### Identified Technical Debt
| Item | Impact | Effort | Priority | Description |
|------|--------|--------|----------|-------------|
| [Debt Item] | High/Med/Low | XS/S/M/L/XL | P0/P1/P2 | [What needs fixing] |

### Platform Improvements
- **Performance**: [Planned optimizations]
- **Security**: [Planned enhancements]
- **Developer Experience**: [Tooling improvements]
- **Testing**: [Test coverage improvements]
```

### 7. Risk Register
```markdown
## Risk Register

| Risk | Probability | Impact | Mitigation Strategy | Owner |
|------|-------------|--------|-------------------|--------|
| [Risk description] | High/Med/Low | High/Med/Low | [How to handle] | [Who] |
| [Risk description] | High/Med/Low | High/Med/Low | [How to handle] | [Who] |
```

### 8. Sprint Planning Guide
```markdown
## Sprint Planning Guide

### Sprint Cadence
- **Duration**: [1 week/2 weeks]
- **Planning Day**: [Monday/Other]
- **Review Day**: [Friday/Other]

### Sprint Planning Process
1. Review completed items from TASKS.md
2. Select next items from this PLANNING.md based on:
   - Current phase focus
   - Dependencies completed
   - Team capacity
   - Priority order
3. Break down selected epics/features into tasks
4. Move tasks to TASKS.md with clear acceptance criteria

### Definition of Done
- [ ] Code complete and reviewed
- [ ] Tests written and passing
- [ ] Documentation updated
- [ ] Deployed to staging
- [ ] Product owner approved
```

### 9. Planning Notes & Decisions
```markdown
## Planning Notes & Decisions

### [Date]: [Decision/Note Title]
**Context**: [Why this came up]
**Decision**: [What was decided]
**Impact**: [How this affects the plan]

[Add new entries at the top]
```

## Generation Instructions

When creating this PLANNING.md:

1. **Connect to README**: Ensure epics align with product vision and features
2. **Be Realistic**: Use conservative effort estimates
3. **Show Dependencies**: Make technical dependencies explicit
4. **Maintain Hierarchy**: Phases → Epics → Features → Tasks (in TASKS.md)
5. **Use Consistent Sizing**: 
   - XS = 1 day
   - S = 2-3 days  
   - M = 1 week
   - L = 2 weeks
   - XL = 3+ weeks
6. **Priority Levels**:
   - P0 = Blockers/Critical path
   - P1 = Important for launch
   - P2 = Enhancements

## Planning Best Practices

### For Epics
- Each epic should deliver clear user value
- Epics should be completable in 2-6 weeks
- Include both functional and non-functional requirements
- Always specify success criteria

### For Features
- Features should be independently deployable when possible
- Include technical approach to guide implementation
- Identify dependencies early
- Consider feature flags for gradual rollout

### For Phases
- Each phase should have a clear theme
- Phases should build on each other
- Earlier phases focus on core functionality
- Later phases add polish and scale

## AI Integration Notes

When an AI assistant reads this file, it should:
1. Understand the current development phase
2. Know which epics are active
3. See the priority order for features
4. Understand technical dependencies
5. Be able to suggest next items for TASKS.md

## File Relationships

```
README.md (Vision) 
    ↓
PLANNING.md (Strategy) ← You are here
    ↓
TASKS.md (Execution)
```

## Remember

This PLANNING.md is a living document that should be updated:
- After each sprint completion
- When priorities change
- When new requirements emerge
- When technical discoveries affect scope
- During phase transitions

The goal is to maintain a clear, prioritized backlog that any developer or AI assistant can understand and execute against.

## Usage Example

To use this instruction with an AI assistant:

```
"Read AI-PLANNING-INSTRUCTION.md and create a PLANNING.md for my project.

Context from README:
- Project: [Name and type]
- Vision: [What we're building]
- Features needed: [List main features]
- Timeline: [Any deadlines]
- Team size: [How many developers]
- Current stage: [Where you are now]"
```

The AI will create a comprehensive planning document that breaks down your project into manageable phases, epics, and features.