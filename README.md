
# PhiCheck: Attendance Management System

## Overview

PhiCheck is a comprehensive Attendance Management System designed to streamline the process of tracking employee attendance, managing leaves, and providing insights into workforce attendance patterns. This README.md file provides an overview of the system's features, technical requirements, and instructions for setting up and running the application.

### Authentication and Authorization

- Implemented a robust authentication system for Admin and Employee logins.
- Utilized role-based access control to ensure only authorized actions are performed.

### Admin Interface

- Designed an Admin dashboard with options to:
  - Display a list of employees with details such as Name, Address, Department, etc.
  - Provide a detailed view of each employee's day-wise attendance, including total working days, present days, leaves, etc.
  - Created a demo dataset with at least 10 sample employee details for demonstration purposes.

### Employee Interface

- Developed an intuitive employee portal with options for:
  - Punch In and Punch Out functionalities to record date, time, etc.
  - View personal attendance details, including historical data.
  - Submit leave applications, specifying the leave date and reason.

### Leave Management

- Implemented a leave application system where employees can submit leave requests through their portal.
- Provided a status display for submitted applications (pending, approved, rejected).
- Allowed employees to view the current status of their leave applications.

### Admin Leave Approval Workflow

- Designed an Admin panel to review and manage leave applications.
- Enabled Admins to approve or reject leave applications with corresponding buttons.
- Implemented real-time updates to reflect the application status changes in the employee portal.
