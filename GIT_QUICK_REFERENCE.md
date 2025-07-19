# Git Conventions Quick Reference

## Branch Naming: `type/ticket_description`

### Branch Types

- **ft** - Feature
- **tt** - Task
- **rf** - Refactor
- **cr** - Code Review
- **wr** - Work
- **fx** - Fix
- **hf** - Hotfix

### Examples

```
ft/001_weather_api_integration
tt/002_setup_riverpod_providers
fx/006_loading_state_bug
hf/007_critical_app_crash
```

## Commit Format: `[type][CD-ticket] Description`

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
[fx][CD-006] Fix loading state not displaying correctly
[hf][CD-007] Fix critical app crash on startup
```

## Quick Commands

```bash
# Create feature branch
git checkout -b ft/001_weather_api_integration

# Commit with convention
git commit -m "[ft][CD-001] Add weather API service integration"

# Push branch
git push -u origin ft/001_weather_api_integration

# Create bug fix branch
git checkout -b fx/006_loading_spinner_issue

# Commit fix
git commit -m "[fx][CD-006] Fix loading spinner not showing"
```

## Ticket Ranges

- 001-099: Core weather functionality
- 100-199: UI/UX features
- 200-299: State management
- 300-399: Navigation
- 400-499: Settings
- 500-599: Search
- 600-699: Testing
- 700-799: Performance
- 800-899: Bug fixes
- 900-999: Documentation
