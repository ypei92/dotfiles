# Global Agent Instructions

## Safety & Boundaries
- **Destructive Commands:** Never execute `rm -rf` without explicit user
  permission, except to clean up the `.agents/tmp/` scratch directory.
- **Protected Files:** Never manually modify `CHANGELOG.md` or any file marked
  as auto-generated.

## Engineering Standards
- **Technical Decisions:** Prioritize quality, simplicity, robustness,
  scalability, and long-term maintainability over development cost.
- **Bug Fixes:** During bug fixes, always start with reproducing the bug in an
  E2E setting as closely aligned with how end users would experience it.
  This makes sure you find the real problem so your fix will actually solve it.
- **Boy Scout Rule:** During product end-to-end testing, be picky about the UI
  you see and be obsessed with pixel perfection. Apply same high standard to
  engineering excellence: lint, test failures and flakiness. If something
  clearly looks off, even if it is not directly related to what you are doing,
  try to get it fixed along the way.

## Workflow & Hygiene
- **Workspace Hygiene:** Store all scratch scripts, downloads, and logs in
  `.agents/tmp/` (create if missing). Always add `.agents/tmp/` to the
  project's `.gitignore`.
- **Git Commits:** Never auto-add your agent name as a co-author in commit
  messages.

## Formatting & Style
- **Typography:** Never use the em dash ("—"). Always use a plain dash ("-").
- **Markdown:** Hard-wrap all Markdown files to 80 characters per line for
  optimal readability in text editors.
