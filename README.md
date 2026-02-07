# ShareTheMeal Fundraising Platform — Relational Database Design

## Overview
This project designs a relational database to support a global fundraising-campaign platform similar to ShareTheMeal. The goal is to model end-to-end donation operations while also supporting internationalisation, engagement features, and stakeholder reporting needs.

## What This Database Supports
- Supporter accounts and participation across multiple campaigns  
- Donation tracking with multi-currency support and donation type handling (one-time vs recurring/subscription)  
- Campaign lifecycle and progress monitoring toward fundraising targets  
- Campaign updates and marketing assets (e.g., images linked to supporters/campaigns/beneficiaries)  
- Impact representation through beneficiary information and campaign-level summaries  
- Geographic representation through location modelling and campaign-location relationships  

## Design Strategy: 3 Alternative ERD Options

### Option 1 (Core + Engagement + Recurring Donations)
A core operational model enhanced with a “Challenges” feature to drive community participation, plus recurring donations and stored payment methods to reduce donation friction.

### Option 2 (Enhanced Platform Model)
Extends the core with additional platform features such as beneficiary, volunteer, image, currency, and subscription entities to strengthen impact reporting, international support, and marketing capability.

### Option 3 (AI-Assisted Baseline)
An ERD generated using AI with prompts documented, used as a comparative baseline against the two human-designed options.

## Key Modelling Assumptions (Examples)
- Supporters must have accounts and can donate multiple times.
- Donations can be made from anywhere, in different currencies.
- Campaigns can have multiple updates and may be active/inactive/completed depending on design option.
- Campaigns can operate across multiple locations (many-to-many via a junction table).
- Beneficiaries are tied to campaign regions, supporting impact-focused reporting.

## Example Stakeholder Analytics (SQL)
The SQL reporting is designed around stakeholder questions, including:
- How many distinct supporters does each campaign have (engagement)?
- What is the average monthly donation amount per campaign (trend analysis)?
- How do campaigns compare on impact + demographics + donation performance (executive summary)?
- What percentage of a campaign’s target has been achieved (progress monitoring)?
- How do donations vary by location/country (regional performance)?

## Integrity & Quality Focus
The design uses primary/foreign key relationships to maintain referential integrity and is supported by normalisation-oriented reasoning to reduce redundancy and improve consistency across entities.
