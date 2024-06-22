create table public.profiles (
  id uuid not null references auth.users on delete cascade,
  nickname text not null,
  email text not null,
  phone_number text,
  gender text,
  image text,
  created_at timestamptz default now(),

  primary key (id)
);

alter table public.profiles enable row level security;