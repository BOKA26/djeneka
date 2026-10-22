-- Grant explicit permissions to anon and authenticated roles
-- (RLS policies exist but need explicit grants on tables)

GRANT USAGE ON SCHEMA public TO anon, authenticated;

-- Grant SELECT, INSERT, UPDATE, DELETE on all tables
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO authenticated;

-- Grant USAGE on all sequences (for auto-increment fields if added later)
GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO anon;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO authenticated;
