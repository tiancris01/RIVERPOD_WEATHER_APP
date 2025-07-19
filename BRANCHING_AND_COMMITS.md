# Branching and Commit Conventions

This document outlines the branching naming conventions and commit message rules for the Weather Riverpod App project.

## Branch Naming Convention

### Format: `type/ticket_description`

### Branch Types

- **ft** - Feature (new functionality)
- **tt** - Task (general tasks, improvements)
- **rf** - Refactor (code restructuring)
- **cr** - Code Review (review-related changes)
- **wr** - Work (general work, miscellaneous)
- **fx** - Fix (bug fixes)
- **hf** - Hotfix (critical production fixes)

### Examples

```
ft/001_weather_api_integration
tt/002_setup_riverpod_providers
rf/003_weather_model_structure
cr/004_ui_component_review
wr/005_project_documentation
fx/006_loading_state_bug
hf/007_critical_app_crash
```

### Description Guidelines

- Use lowercase letters
- Separate words with underscores
- Be descriptive but concise
- Include the main feature/change being worked on

## Commit Message Convention

### Format: `[type][CD-ticket] Description`

### Commit Types

- **ft** - Feature
- **tt** - Task
- **rf** - Refactor
- **cr** - Code Review
- **wr** - Work
- **fx** - Fix
- **hf** - Hotfix
- **dc** - Documentation
- **ts** - Test
- **ch** - Chore

### Examples

```
[ft][CD-001] Add OpenWeatherMap API integration
[tt][CD-002] Setup Riverpod providers for weather state
[rf][CD-003] Refactor weather model structure
[fx][CD-006] Fix loading state not displaying correctly
[hf][CD-007] Fix critical app crash on startup
[dc][CD-008] Update API documentation
[ts][CD-009] Add unit tests for weather service
[ch][CD-010] Update Flutter dependencies
```

### Description Guidelines

- Use imperative mood ("Add" not "Added" or "Adds")
- Capitalize first letter
- No period at the end
- Maximum 72 characters
- Be clear and descriptive

## Workflow Examples

### Creating a New Feature Branch

```bash
# Create and switch to feature branch
git checkout -b ft/001_weather_api_integration

# Work on your changes...

# Commit with proper format
git commit -m "[ft][CD-001] Add weather API service integration"

# Push branch
git push -u origin ft/001_weather_api_integration
```

### Bug Fix Workflow

```bash
# Create bug fix branch
git checkout -b fx/006_loading_spinner_issue

# Fix the bug...

# Commit the fix
git commit -m "[fx][CD-006] Fix loading spinner not showing on weather fetch"

# Push and create PR
git push -u origin fx/006_loading_spinner_issue
```

### Hotfix Workflow

```bash
# Create hotfix from main
git checkout main
git checkout -b hf/007_app_crash_fix

# Apply critical fix...

# Commit hotfix
git commit -m "[hf][CD-007] Fix app crash when location permission denied"

# Push and merge to main immediately
git push -u origin hf/007_app_crash_fix
```

## Ticket Numbering System

### Format: XXX (for branches) / CD-XXX (for commits)

- **Branch naming**: Use just the number (001, 002, 003...)
- **Commit messages**: Use CD-XXX prefix (CD-001, CD-002, CD-003...)
- **CD** - Project prefix (Codigo) - only in commits
- **XXX** - Sequential number

### Categories by Number Range

- **001 to 099** - Core weather functionality
- **100 to 199** - UI/UX features
- **200 to 299** - State management and providers
- **300 to 399** - Navigation and routing
- **400 to 499** - Settings and preferences
- **500 to 599** - Search functionality
- **600 to 699** - Testing and quality assurance
- **700 to 799** - Performance optimizations
- **800 to 899** - Bug fixes
- **900 to 999** - Documentation and maintenance

## Git Best Practices

### Before Committing

1. Run `flutter analyze`
2. Run `flutter test`
3. Format code with `dart format .`
4. Review your changes

### Branch Management

- Always branch from `main` for new work
- Keep branches focused on single tickets
- Delete branches after merging
- Use descriptive branch names

### Pull Request Guidelines

1. Title should match the ticket: "[type][CD-XXX] Description"
2. Include ticket number in PR description
3. Add screenshots for UI changes
4. Request appropriate reviewers
5. Ensure CI checks pass

## Common Scenarios

### Multiple Commits for Same Ticket

```bash
[ft][CD-001] Add weather API service structure
[ft][CD-001] Implement weather data fetching
[ft][CD-001] Add error handling for API calls
[ft][CD-001] Update documentation for weather service
```

### Related Work Across Different Types

```bash
# Main feature
[ft][CD-001] Add weather API integration

# Related task
[tt][CD-002] Setup environment variables for API keys

# Related fix
[fx][CD-003] Fix API timeout configuration
```

### Documentation and Testing

```bash
[dc][CD-004] Add API integration documentation
[ts][CD-005] Add unit tests for weather service
[ch][CD-006] Update dependencies for security patches
```

---

Following these conventions ensures consistent, trackable, and professional Git history for the Weather Riverpod App project.
