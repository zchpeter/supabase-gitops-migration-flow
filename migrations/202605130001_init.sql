CREATE TABLE IF NOT EXISTS "public"."users" (
    "id" serial,
    "name" character varying(255) NOT NULL,
    "email" character varying(255) NOT NULL,
    "phone" character varying(24) NOT NULL,
    "address" text,
    "description" text,
    "created_at" timestamp(6) with time zone DEFAULT now(),
    CONSTRAINT "users_pkey" PRIMARY KEY (id),
    CONSTRAINT "users_email_key" UNIQUE (email)
);

CREATE TABLE IF NOT EXISTS "public"."blog_posts" (
    "id" serial,
    "title" character varying(255) NOT NULL,
    "body" text,
    "author_id" integer,
    "deleted" boolean DEFAULT false NOT NULL,
    "created_at" timestamp(6) with time zone DEFAULT now(),
    "updated_at" timestamp(6) with time zone DEFAULT now(),
    CONSTRAINT "blog_posts_pkey" PRIMARY KEY (id),
    CONSTRAINT "blog_posts_author_id_fkey" FOREIGN KEY ("author_id") REFERENCES "public"."users" ("id")
);
