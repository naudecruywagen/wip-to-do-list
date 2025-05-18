# 📝 ToDoList

This is a minimal SwiftUI to-do list app used for a team development exercise focused on demonstrating the impact of limiting Work In Progress (WIP) and pull requests. The purpose is not just to build a functional app, but to simulate the typical software development lifecycle—coding, reviews, merging, and team flow - under different WIP constraints.

## Purpose

This project is part of a remote team exercise to help developers experience how context switching and high PR volume can negatively affect development speed, and how enforcing PR WIP limits can improve cycle time and focus. The app is kept intentionally small, with numerous small and relatively independent tasks that can be assigned across multiple developers during a session.

## Getting Started

1. Clone the repository and open `ToDoList.xcodeproj` in Xcode.
2. Build and run the app on iOS Simulator or a real device.
3. Explore the existing functionality: create tasks, mark them complete, view due dates, and set priorities.
4. See the task list below for developer enhancements.

## Developer Tasks

The following tasks are designed to be completed as part of the WIP/practice rounds. Each one should be done in its own branch and submitted via a pull request.

1. Implement `TaskStore.loadTasks()` to load tasks from disk (using Persistence).
2. Implement `TaskStore.saveTasks()` to save tasks to disk (using Persistence).
3. Write a unit test in `testAddTask()` to verify adding a task updates the `tasks` array.
4. Write a unit test in `testDeleteTask()` to verify deleting a task removes it.
5. Write a unit test in `testToggleCompletion()` to verify toggling completion state updates the task.
6. Prevent adding tasks with empty titles at the model level (add validation in Task initializer).
7. Implement sorting of tasks by due date in `ContentView` (stub is in place).
8. Add a UI change: highlight overdue tasks in red in the list.
9. Add a filter toggle in `ContentView` to show only incomplete tasks.
10. Implement an "Edit Task" feature: create `EditTaskView` and allow tapping a task cell to edit.
11. Add a search bar to filter tasks by title.
12. Implement priority sorting: tasks with high priority appear at the top.
13. Add a "Clear Completed" button that deletes all completed tasks.
14. Show badge count of incomplete tasks on the navigation bar.
15. Localize all user-facing strings (e.g., Text and button labels).
16. Add dark mode support: ensure UI looks good in dark appearance.
17. Enhance persistence: switch from UserDefaults stub to JSON file storage using `Persistence`.
18. Add UI tests or snapshot tests for adding/deleting tasks (optional).

## License

MIT License. Use this freely for training or team collaboration exercises.
