# 🏛️ Participatory Budgeting Platform

A customizable Rails application for managing participatory budgeting workflows. Designed for organizations that want to empower stakeholders in decision-making through budget allocation, phase-based voting, and impact assessments.

## 🚀 Tech Stack

- **Ruby**: 3.4.4
- **Rails**: 8.0.4
- **MySQL** 

---

## 📦 Features

### ✅ Budget Management
- Create budgets with start/end dates and total allocation
- View associated categories, projects, and phases

### ✅ Category-Based Spending Limits
- Define category-specific percentage caps
- Validate project allocation in real time
- Admin dashboard to monitor category utilization

### ✅ Multi-Phase Budget Voting
- Create phases like pre-selection, final voting, and implementation
- Set custom rules, participant eligibility, and timelines
- Automatic phase transitions with analytics

### ✅ Impact Assessment Integration
- Add impact metrics: estimated beneficiaries, timelines, sustainability scores
- Filter/sort projects based on impact
- Generate reports for approved proposals

---

## 🧰 Models

- `Budget`: Core model, holds total amount and date range
- `BudgetCategory`: Linked to budgets, includes spending limits
- `Project`: Linked to categories, includes allocation and description
- `BudgetPhase`: Multi-phase voting with rules and schedules
- `ImpactMetric`: Metrics linked to each project

---

## 🌐 Routes

Supports full RESTful CRUD:
```ruby
resources :budgets do
  resources :budget_categories
  resources :budget_phases
  resources :projects
end

resources :projects do
  resource :impact_metric
end
```



🧪 Installation
Clone the repo git clone https://github.com/your-username/budget-platform.git

Install dependencies bundle install

Create and migrate database

bash
rails db:create
rails db:migrate
Run the server rails server

Visit http://localhost:3000

🛡️ Validation Highlights
Project allocation checks category limit in controller & model

Phase dates validated against each other

Impact metric requires all key fields

📊 Demo
Show budget creation

Allocate projects within limits

Transition voting phases

Display impact dashboard



