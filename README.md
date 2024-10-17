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

### Step 1: Clone the 

### Step 1: Clone the repository

```bash
    git clone https://github.com/Chi-G/Developer-Shutdown.git
    cd Developer-Shutdown

    ### Step 2: Install dependencies

    composer install

    ### Step 3: Set up your .env file
    Copy .env.example to .env and update your database credentials.

    ### Step 4: Run Migrations
    php artisan migrate

    ### Step 5: Seed Users into Database
    php artisan db:seed --class=UserSeeder

    ### Step 6: Run Artisan Command
    Use the following artisan command to update users with new random data:

    php artisan users:update
```

### Project Phases and Time Tracking
    Below is a breakdown of each phase in the project along with the time it took to complete them:

                      - Added a `timezone` field to `users` table.  
                      - Seeded 20 users with random timezones.  
                      - Created an artisan command to update user attributes.  
                      - Prepared API logic for batch updates. | 60-90 minutes            |
| 3. Staging and Testing | Tested the project to ensure all features (artisan commands, seeding, batch API) work as expected. | 30-45 minutes | | 4. Debugging | Resolved any issues discovered during testing and optimized the solution where necessary. | 20-30 minutes | | 5. Submit | Final code review, documentation, pushed the changes to the GitHub repository. | 10-15 minutes |

### Conclusion
This project was completed following the Laravel Developer Showdown requirements. Each phase was handled efficiently, ensuring that all features functioned as required. If you have any questions or feedback, feel free to reach out!

### Author
Chijindu Nwokeohuru
Laravel Developer | chijindu.nowkeohuru@gmail.com


