-- A/B test: conversion rate per group
-- Users, conversions and conversion rate for the ad group (treatment) and the PSA group (control).
-- Table: users (one row per user, see README.md in this folder)

SELECT  "group",
        COUNT(*)                         AS users,
        SUM(converted)                   AS conversions,
        ROUND(100.0 * AVG(converted), 2) AS conversion_rate_pct
FROM    users
GROUP BY "group";
