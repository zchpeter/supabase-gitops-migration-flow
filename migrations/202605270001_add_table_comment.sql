CREATE TABLE IF NOT EXISTS "public"."blog_comments" (
    "id" serial,
    "body" text,
    "author_id" integer NOT NULL,
    "post_id" integer NOT NULL,
    "parent_id" integer,
    "deleted" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT now(),
    "updated_at" timestamp(6) with time zone DEFAULT now(),
    CONSTRAINT "blog_comments_pkey" PRIMARY KEY (id),
    CONSTRAINT "blog_comments_author_id_fkey" FOREIGN KEY ("author_id") REFERENCES "public"."users" ("id"),
    CONSTRAINT "blog_comments_post_id_fkey" FOREIGN KEY ("post_id") REFERENCES "public"."blog_posts" ("id"),
    CONSTRAINT "blog_comments_parent_id_fkey" FOREIGN KEY ("parent_id") REFERENCES "public"."blog_comments" ("id")
);
