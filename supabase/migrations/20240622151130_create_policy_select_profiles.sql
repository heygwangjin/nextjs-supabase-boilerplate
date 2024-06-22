create policy "Enable read profiles for authenticated users only"
on "public"."profiles"
as permissive
for select
to authenticated
using (true);