# 📝 ToDoList

This is a minimal SwiftUI to-do list app used for a team development exercise focused on demonstrating the impact of limiting Work In Progress (WIP) and pull requests. The purpose is not just to build a functional app, but to simulate the typical software development lifecycle—coding, reviews, merging, and team flow - under different WIP constraints.

## Purpose

This project is part of a remote team exercise to help developers experience how context switching and high PR volume can negatively affect development speed, and how enforcing PR WIP limits can improve cycle time and focus. The app is kept intentionally small, with numerous small and relatively independent tasks that can be assigned across multiple developers during a session.

## Getting Started

1. Clone the repository and open `ToDoList.xcodeproj` in Xcode.
2. Build and run the app on iOS Simulator or a real device.
3. Explore the existing functionality: create tasks, mark them complete, view due dates, and set priorities.
4. Review the Exercise Instructions section below to run the two rounds.
5. Assign developer tasks (see "Developer Tasks" section) in branches and open PRs per the WIP rules.

## Exercise Instructions

### Round 1: High WIP Scenario (Unlimited PRs)

**Timebox:** 10 minutes coding + 5 minutes debrief

1. **Start:** Facilitator announces the beginning of Round 1.  
2. **No WIP Limit:** Developers pick 1–2 tasks each from the task list and start coding immediately.  
3. **Open PR Early:** As soon as some code is ready (even if partially complete), push to a feature branch and open a Pull Request. Post in Slack asking for review.  
4. **Pick New Tasks:** While waiting for reviews, pick up additional tasks without waiting for merges.  
5. **Allow Context Switching:** Developers naturally switch between tasks A, B, PR reviews, etc.  
6. **Track WIP:** Facilitator observes the number of open PRs.  
7. **Stop:** After 10 minutes, halt coding; leave PRs open.  

**Debrief (5 min):**  
- How many PRs are open?  
- How many PRs merged?  
- What was the average PR open time?  
- How did context switching feel?  
- Discuss impact on cycle time and mental load.

### Round 2: Low WIP Scenario (WIP Limits in Action)

**Timebox:** 10 minutes coding + 5 minutes debrief

1. **Reset:** Close or ignore Round 1 PRs; reset main branch or use a fresh branch.  
2. **Enforce WIP Limit:** Each developer may have **only 1 open PR** at a time.  
3. **Pick 1 Task:** Choose a single task and work to completion before opening a PR.  
4. **Open PR & Stop:** When done, open the PR and **stop coding new work**.  
5. **Review & Merge:** Review peers’ PRs, help fix issues, and get the PR merged.  
6. **Pull Next Task:** After merge, pick the next task and repeat.  
7. **Stop:** After 10 minutes, halt work; note merged PRs.

**Debrief (5 min):**  
- How many PRs were merged?  
- How many PRs remain open?  
- How did focus differ from Round 1?  
- Discuss cycle time improvement and team collaboration.

## Developer Tasks

The following tasks are designed to be completed as part of the WIP/practice rounds. Each one should be done in its own branch and submitted via a pull request.

1. Implement swipe-to-delete UI in `ContentView` to allow deleting individual tasks.
2. Implement `TaskStore.loadTasks()` to load tasks from disk (using UserDefaults in `Persistence`).
3. Implement `TaskStore.saveTasks()` to save tasks to disk (using UserDefaults in `Persistence`).
4. Write a unit test in `testAddTask()` to verify adding a task updates the `tasks` array.
5. Write a unit test in `testDeleteTask()` to verify deleting a task removes it.
6. Write a unit test in `testToggleCompletion()` to verify toggling completion state updates the task.
7. Prevent adding tasks with empty titles in the UI and at the model level (add validation in Task initializer).
8. Implement sorting of tasks by due date in `ContentView`.
9. Add a UI change: highlight overdue tasks in red in the list.
10. Add a filter toggle in `ContentView` to show only incomplete tasks.
11. Implement an "Edit Task" feature: create `EditTaskView` and allow tapping a task cell to edit.
12. Add a search bar to filter tasks by title.
13. Implement priority sorting: tasks with high priority appear at the top.
14. Add a "Clear Completed" button that deletes all completed tasks.
15. Show badge count of incomplete tasks on the navigation bar.
16. Localize all user-facing strings (e.g., Text and button labels).
17. Add dark mode support: ensure UI looks good in dark appearance.
18. Enhance persistence: switch from UserDefaults to JSON file storage, using `Persistence`.
19. Add UI tests or snapshot tests for adding/deleting tasks.

## License

MIT License. Use this freely for training or team collaboration exercises.
