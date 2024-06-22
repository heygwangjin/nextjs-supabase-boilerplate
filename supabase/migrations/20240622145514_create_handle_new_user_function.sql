create function public.handle_new_user()
returns trigger
language plpgsql
security definer set search_path = ''
as $$
begin
  insert into public.profiles (id, nickname, email, phone_number, gender, image)
  values (new.id, new.raw_user_meta_data ->> 'nickname', new.raw_user_meta_data ->> 'email', new.raw_user_meta_data ->> 'phone_number', new.raw_user_meta_data ->> 'gender', new.raw_user_meta_data ->> 'image');
  return new;
end;
$$;