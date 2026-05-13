INSERT INTO "public"."users" (name, email, phone) VALUES ('Bytebase', 'help@bytebase.com', '123456789') ON CONFLICT DO NOTHING;
