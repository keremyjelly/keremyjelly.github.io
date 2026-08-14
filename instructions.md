# Finishing My Portfolio Site — The Right Way

A short playbook for finishing my personal website before the CRF Web Developer application (due **July 26, 2026**) in a way that's honest, prepares me for the actual job, and doesn't waste time.

---

## The core idea

The question isn't **"AI or no AI."** Professional web developers use AI constantly — that's not what would make this dishonest or leave me unprepared.

The axis that actually matters is:

> **Can I understand, modify, and explain what's on the page?**

That single test resolves both things I care about:

- **Honesty** — Using AI to build my site isn't misrepresenting myself. Presenting a site as proof of my skill when I *couldn't* debug, change, or explain it — that's where it gets shaky. The fix isn't abstaining from the tool. It's making sure the understanding underneath is real.
- **Deliverability** — On the CRF project, the AI *will* hand me something that breaks, or the client will ask for a change, and I'll need to reason about the code myself in that moment. If I can only vibecode the happy path, I stall there. The competence is the point, not the purity.

## The rule: tutor mode, not oracle mode

Keep using AI. Change *how*:

- **Oracle mode (avoid):** paste the prompt, copy the output, move on.
- **Tutor mode (use):** for each change, have it explain *what* it did and *why*, then confirm I could redo or tweak it by hand.

This finishing sprint is a low-stakes, perfect chance to convert vibecoding into real understanding — on exactly the things CRF will test me on.

---

## The punch list

Ordered by impact for the application. Each item also happens to check a box on CRF's own responsibilities list — which is a strong line for my "why I'm interested" note: *"I built these features on my own site."*

### 1. Fill in the two project descriptions — *(highest priority)*
Right now both "Tetris" and "Eli Lilly Micro Project" say *"A description of this project will go here."* On a site I'm submitting as proof I can build web things, placeholder text is the worst possible signal.
- Write real copy for each, add a screenshot or thumbnail, link to the repo/live demo.
- For the Lilly project, drop in a mockup image from the concept deck — it'll look great.
- *This is writing, not code — no AI-understanding concern here.*

### 2. Add a working contact form — *(CRF checklist item)*
GitHub Pages is static, so wire the form through **Formspree** (free, ~20 min).
- **Learn, don't just paste:** understand the form markup and what the submission actually does — where the POST goes, how Formspree receives it.
- I'll likely build the same thing for CRF, so this is direct prep.

### 3. Optimize images for page speed — *(CRF checklist item)*
The hero shot is a phone `.JPG` and probably several MB.
- Compress/resize it and any other large images.
- *Just running a tool — no learning debt. Just do it.*

### 4. Fix broken/placeholder links
- Goodreads link points to the generic homepage, not my profile. Broken links quietly cost credibility on a portfolio.

### 5. Verify responsiveness on mobile + tablet — *(CRF's #1 bullet)*
Check all three pages (Home, Bookshelf, Pinboard) on phone and tablet widths.
- **This is the one to genuinely learn:** media queries, flexbox/grid. It's very learnable in a few focused hours, it's their top requirement, and it's the kind of thing I'll be asked to reason about. Learn it well enough to *explain* it.

### 6. SEO polish — *(bonus, low effort)*
- Already have meta description + viewport.
- Add per-page `<title>` and descriptions, plus Open Graph tags so shared links preview nicely.

---

## Where to spend the understanding effort

Don't try to deeply learn everything — be deliberate about the two that matter, breeze through the rest.

| Task | Approach |
|------|----------|
| Responsive CSS | **Learn it** — media queries, flexbox/grid. Explain it out loud. |
| Contact form | **Understand it** — form markup + where the POST goes. |
| Image optimization | Just run the tool. |
| Project write-ups | Writing, not code. |
| Link fixes / SEO tags | Quick, mechanical. |

---

## Hosting note

Stay on **GitHub Pages** — it's presentable and professional; don't migrate hosts before the 26th. If I want polish, add a **custom domain** (~$10–15/yr, ~1 hr to set up). Only reason to consider Netlify instead: its free built-in form handling — but Formspree on GitHub Pages does the same job.

---

## Bottom line

Keep the AI. Change how I use it. Come out of this sprint able to explain my own site — that's what makes the application honest *and* the job doable.