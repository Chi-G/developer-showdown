# DEVELOPER SHUTDOWN

## Introduction

Welcome to **Developer Shutdown**, a Laravel project designed as part of a coding and decision-making exercise. This project demonstrates how to plan, develop, and implement an application in Laravel while managing tasks like user timezone updates and batch API integrations.

The objective of this project was to build a Laravel application that adds a `timezone` field to the `users` table, seeds the database with users, and creates an artisan command to update user details. Additionally, it involves handling batch API updates based on user changes.

---

## Features Implemented

1. **Add Timezone Field to Users Table**
   - Added a `timezone` string field to the `users` table through migration.
   
2. **Database Seeding**
   - Seeded the database with 20 users, assigning random timezones (`CET`, `CST`, `GMT+1`) to each user.

3. **Artisan Command**
   - Created a custom artisan command to update users' `firstname`, `lastname`, and `timezone` to random new values.
   
4. **Batch API Implementation**
   - Prepared a structure for batch API updates for user data changes, considering a limit of 50,000 updates per hour.

---

## Setup Instructions

### Step 1: Clone the repository

```bash
git clone https://github.com/YOUR-USERNAME/Developer-Shutdown.git
cd Developer-Shutdown

### Step 2: Install dependencies

```bash
composer install

### Step 3: Set up your .env file
Copy .env.example to .env and update your database credentials.

### Step 4: Run Migrations

```bash
php artisan migrate

### Step 5: Seed Users into Database

```bash
php artisan db:seed --class=UserSeeder

### Step 6: Run Artisan Command
Use the following artisan command to update users with new random data:

```bash
php artisan users:update
