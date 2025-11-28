# Grocy Home Assistant Add-on

ERP beyond your fridge - Grocy is a web-based self-hosted groceries & household management solution for your home.

## Features

- **Ingress Support**: Access Grocy directly through Home Assistant interface
- **Stock Management**: Keep track of your stock with purchase, consume and inventory transactions
- **Shopping Lists**: Create and manage shopping lists
- **Recipes**: Manage recipes and meal plans
- **Chores**: Track recurring chores and tasks
- **Batteries**: Keep track of battery changes
- **Equipment**: Manage your household equipment and manuals

## Installation

1. Add this repository to your Home Assistant add-on store
2. Install the "Grocy" add-on
3. Configure the add-on (see configuration section below)
4. Start the add-on
5. Access Grocy through the Home Assistant sidebar

## Configuration

```yaml
culture: en
currency: USD
tz: America/New_York
```

### Option: `culture`

Set the language/culture for Grocy. Examples: `en`, `de`, `fr`, `es`, etc.

### Option: `currency`

Set your preferred currency. Examples: `USD`, `EUR`, `GBP`, etc.

### Option: `tz`

Set your timezone. Examples: `America/New_York`, `Europe/London`, `Asia/Tokyo`, etc.

## Default Login

On first launch, use these default credentials:

- **Username**: `admin`
- **Password**: `admin`

**Important**: Change the default password immediately after first login!

## Data Persistence

All Grocy data is stored in `/data/grocy` and will persist across add-on restarts and updates.

## Support

For issues specific to this add-on, please open an issue on the add-on repository.

For Grocy-specific questions, visit the [official Grocy documentation](https://grocy.info).
