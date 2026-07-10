```markdown
# todo Development Patterns

> Auto-generated skill from repository analysis

## Overview
This skill teaches you the core development patterns and conventions used in the `todo` Ruby codebase. You'll learn about file naming, import/export styles, commit message habits, and how to write and run tests. While no specific frameworks or automated workflows are detected, this guide provides clear instructions for maintaining consistency and quality in your contributions.

## Coding Conventions

### File Naming
- Use **camelCase** for file names.
  - Example: `todoList.rb`, `userTasks.rb`

### Import Style
- Use **relative imports** to include other files.
  - Example:
    ```ruby
    require_relative './taskManager'
    ```

### Export Style
- Use **named exports** (explicitly define what is exported from a file).
  - Example:
    ```ruby
    # In taskManager.rb
    class TaskManager
      # ...
    end

    # Usage in another file
    require_relative './taskManager'
    ```

### Commit Messages
- Freeform style, no strict prefixes.
- Average commit message length: ~35 characters.
  - Example:  
    ```
    Add ability to delete tasks
    ```

## Workflows

### Adding a New Feature
**Trigger:** When you want to introduce new functionality  
**Command:** `/add-feature`

1. Create a new camelCase Ruby file for your feature.
2. Implement your feature using relative imports as needed.
3. Export any classes or modules with named exports.
4. Write a corresponding test file named in the pattern `featureName.test.rb`.
5. Commit your changes with a clear, concise message.

### Fixing a Bug
**Trigger:** When you need to resolve a defect  
**Command:** `/fix-bug`

1. Locate the relevant camelCase file.
2. Apply your fix, ensuring you use relative imports if needed.
3. Update or add a test in the corresponding `*.test.rb` file.
4. Commit with a descriptive message about the fix.

### Running Tests
**Trigger:** To verify code correctness  
**Command:** `/run-tests`

1. Identify all files matching the `*.test.rb` pattern.
2. Use your preferred Ruby test runner (e.g., `ruby`, `rspec`, or another) to execute tests.
   - Example:
     ```bash
     ruby taskManager.test.rb
     ```
3. Review the test output and address any failures.

## Testing Patterns

- Test files follow the `*.test.rb` naming convention.
- The specific testing framework is not detected; use standard Ruby testing approaches (e.g., `Test::Unit`, `RSpec`, or simple assertions).
- Place tests alongside or near the code they verify.
- Example test file:
  ```ruby
  # taskManager.test.rb
  require_relative './taskManager'

  def test_add_task
    manager = TaskManager.new
    manager.add('New Task')
    raise 'Test failed' unless manager.tasks.include?('New Task')
  end

  test_add_task
  ```

## Commands
| Command        | Purpose                                   |
|----------------|-------------------------------------------|
| /add-feature   | Scaffold and implement a new feature      |
| /fix-bug       | Apply and test a bug fix                  |
| /run-tests     | Run all test files in the codebase        |
```
