// app/page.tsx - server component that redirects to /foodList
import { redirect } from 'next/navigation';

export default function Page() {
  redirect('/foodList');
}