# 🔄 Claude Systematic Workflows

**Professional TDD, debugging, and quality enforcement for Claude Code**

Part of the [FrankX Claude Code Ecosystem](https://github.com/frankxai/claude-code-config)

## What This Provides

This repository adds systematic, professional development workflows to Claude Code through:

- **Test-Driven Development** (TDD) patterns
- **Systematic Debugging** processes
- **Quality Enforcement** hooks
- **Professional Commands** for development workflow

## Features

### 🧪 Core Skills (Auto-Activate)

**From obra/superpowers:**
- `test-driven-development` - Automatic TDD workflow activation
- `systematic-debugging` - Evidence-based debugging process
- `verification-before-completion` - Quality gates before claiming done
- `defense-in-depth` - Multiple validation layers
- `using-git-worktrees` - Parallel development patterns
- `subagent-driven-development` - Multi-agent coordination

### ⚡ Development Commands

**From orielsanchez/claude-code-template:**
- `/dev "feature"` - Start TDD feature development
- `/check` - Validate quality (tests, lint, types)
- `/ship` - Create professional commit
- `/debug` - Systematic debugging workflow
- `/refactor` - Safe refactoring with test coverage
- `/plan` - Strategic planning
- `/claude-md` - Update CLAUDE.md instructions

### 🔒 Quality Hooks

**Git hooks for enforcement:**
- Pre-commit: Prevent emoji commits, run linters
- Pre-push: Verify tests pass
- Commit-msg: Enforce conventional commits

## Quick Start

### Installation

```bash
# Clone this repo
git clone https://github.com/frankxai/claude-systematic-workflows.git
cd claude-systematic-workflows

# Run installer
./install.sh
```

Or manual installation:

```bash
# Copy skills
cp -r skills/* ~/.claude/skills/

# Copy commands
cp -r commands/* ~/.claude/commands/

# Copy hooks (optional, for quality enforcement)
cp hooks/* ~/.git/hooks/
chmod +x ~/.git/hooks/*
```

### Verification

Test the installation:

```bash
# In Claude Code, try:
/dev "add user authentication"

# Skills should auto-activate when relevant:
# - test-driven-development (when implementing features)
# - systematic-debugging (when debugging)
# - verification-before-completion (before claiming done)
```

## Usage Examples

### Example 1: TDD Feature Development

```bash
# Start with /dev command
/dev "add OAuth login"

# Claude will:
# 1. Ask about your test framework
# 2. Write tests FIRST
# 3. Guide implementation
# 4. Verify tests pass
# 5. Suggest refactoring
```

### Example 2: Quality Validation

```bash
# After making changes
/check

# Runs:
# - All tests
# - Linter (ESLint, Ruff, etc.)
# - Type checker (TypeScript, mypy)
# - Reports status
```

### Example 3: Professional Commit

```bash
# When ready to commit
/ship

# Creates:
# - Conventional commit message
# - Proper formatting
# - Co-authored attribution
```

### Example 4: Systematic Debugging

```bash
# When you hit a bug
/debug

# Or just describe the issue:
"The API returns 500 when user logs in"

# systematic-debugging skill activates:
# - Gathers evidence
# - Forms hypotheses
# - Tests systematically
# - Finds root cause
```

## Skills Deep Dive

### test-driven-development

**Activates when:** Implementing features, adding functionality

**Process:**
1. Write failing test
2. Implement minimal code to pass
3. Refactor with confidence
4. Repeat

**Benefits:**
- Clear success criteria
- Prevents regressions
- Enables confident refactoring
- Documents intent

### systematic-debugging

**Activates when:** Debugging issues, investigating bugs

**Process:**
1. Gather evidence (logs, errors, state)
2. Form hypotheses (what could cause this?)
3. Test hypotheses systematically
4. Eliminate possibilities
5. Find root cause

**Benefits:**
- Faster bug resolution
- Prevents wild goose chases
- Builds understanding
- Avoids "random fixes"

### verification-before-completion

**Activates when:** Claiming work is done

**Checklist:**
- [ ] All tests pass
- [ ] No linter errors
- [ ] No type errors
- [ ] Edge cases handled
- [ ] Documentation updated
- [ ] Reviewed own changes

**Benefits:**
- Prevents "done but broken"
- Ensures quality
- Builds professional habits

## Commands Reference

### `/dev "feature name"`

**Purpose:** Start TDD feature development

**Flow:**
1. Understand requirements
2. Write test suite
3. Implement feature
4. Verify tests pass
5. Refactor if needed

**Example:**
```bash
/dev "add password reset flow"
```

### `/check`

**Purpose:** Validate code quality

**Checks:**
- Tests (unit, integration, e2e)
- Linting (ESLint, Ruff, etc.)
- Types (TypeScript, mypy, etc.)
- Build (if applicable)

**Example:**
```bash
/check
```

### `/ship`

**Purpose:** Create professional commit

**Output:**
```
feat(auth): add password reset flow

- Implement email-based reset
- Add rate limiting
- Include security checks

Co-Authored-By: Claude <noreply@anthropic.com>
```

### `/debug`

**Purpose:** Systematic debugging

**Process:**
1. Describe the problem
2. Gather evidence
3. Form hypotheses
4. Test systematically
5. Fix root cause

**Example:**
```bash
/debug "API returns 500 on login"
```

### `/refactor "description"`

**Purpose:** Safe refactoring

**Safety:**
1. Verify tests exist
2. Run tests before
3. Make changes
4. Run tests after
5. Verify behavior unchanged

**Example:**
```bash
/refactor "extract user service"
```

## Git Hooks

### Pre-Commit

**Prevents:**
- Emoji commits
- Linter errors
- Type errors

**Configuration:**
```bash
# Enable/disable in .git/hooks/pre-commit
STRICT_MODE=true  # Fail on any issue
STRICT_MODE=false # Warn but allow
```

### Commit-Msg

**Enforces:**
- Conventional commit format
- Clear descriptions
- Proper grammar

**Format:**
```
type(scope): description

type: feat, fix, docs, style, refactor, test, chore
scope: optional component name
description: imperative, lowercase, no period
```

## Integration with FrankX

This repo complements the main FrankX setup:

**FrankX Core** (claude-code-config):
- 17 specialized agents
- Oracle Cloud depth
- AI Music production
- Consciousness integration

**+ Systematic Workflows** (this repo):
- TDD processes
- Debugging workflows
- Quality enforcement

**= Professional FrankX Setup** 🚀

## Compatibility

**Works with:**
- JavaScript/TypeScript
- Python
- Rust
- Go
- Any language with tests

**Test Frameworks:**
- Jest, Vitest, Mocha (JavaScript)
- pytest (Python)
- Cargo test (Rust)
- Go test (Go)
- And more...

## Credits

**Built on:**
- [obra/superpowers](https://github.com/obra/superpowers) - Core systematic skills
- [orielsanchez/claude-code-template](https://github.com/orielsanchez/claude-code-template) - Quality commands

**Created by:** [FrankX](https://github.com/frankxai)

**Part of:** [FrankX Claude Code Ecosystem](https://github.com/frankxai/claude-code-config)

## License

MIT License - See [LICENSE](LICENSE)

## Contributing

Improvements welcome! Please:
1. Fork the repo
2. Create feature branch
3. Add your enhancement
4. Submit PR with tests

## Support

- **Issues:** https://github.com/frankxai/claude-systematic-workflows/issues
- **Discussions:** https://github.com/frankxai/claude-systematic-workflows/discussions
- **Main Setup:** https://github.com/frankxai/claude-code-config

---

**Professional. Systematic. Effective.** 🔄
