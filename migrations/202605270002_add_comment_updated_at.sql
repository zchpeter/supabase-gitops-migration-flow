ALTER TABLE IF EXISTS "public"."blog_comments" ADD COLUMN updated_at timestamp(6) with time zone DEFAULT now();
