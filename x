<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WR Q12 · 2.3.2 Auswirkungen von Tarifabschlüssen</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800;900&display=swap" rel="stylesheet">
<style>
:root {
  --pri-900:#1A237E; --pri-800:#283593; --pri-700:#3949AB;
  --pri-500:#5C6BC0; --pri-400:#7986CB; --pri-50:#E8EAF6;
  --green:#43A047;   --green-light:#E8F5E9;
  --orange:#FF9800;  --orange-light:#FFF3E0;
  --purple:#7B1FA2;  --purple-light:#F3E5F5;
  --blue:#1976D2;    --blue-light:#E3F2FD;
  --teal:#0d9488;    --teal-light:#ccfbf1;
  --red:#E53935;     --red-light:#FFEBEE;
  --text:#1A1A1A; --text-secondary:#555; --text-muted:#AAA;
  --border:#E0E0E0; --bg-page:#F5F5FF; --bg-card:#fff;
  --grad-pri:linear-gradient(135deg,#283593,#5C6BC0);
  --grad-green:linear-gradient(135deg,#43A047,#26C6DA);
  --grad-teal:linear-gradient(135deg,#26C6DA,#43A047);
  --radius-sm:8px; --radius-md:12px; --radius-lg:16px;
  --shadow:0 2px 8px rgba(0,0,0,0.08);
  --shadow-lg:0 4px 20px rgba(0,0,0,0.12);
}
*{box-sizing:border-box;margin:0;padding:0;}
body{font-family:'Nunito',sans-serif;background:var(--bg-page);color:var(--text);min-height:100vh;}

.topbar{background:var(--pri-800);height:52px;position:sticky;top:0;z-index:100;
  padding:0 2rem;display:flex;align-items:center;gap:1rem;
  box-shadow:0 2px 12px rgba(40,53,147,0.35);}
.topbar-logo{font-weight:900;font-size:15px;color:white;text-decoration:none;}
.topbar-logo span{color:#9FA8DA;}
.topbar-chip{background:rgba(255,255,255,0.18);color:white;font-size:12px;font-weight:700;padding:3px 10px;border-radius:20px;}
.topbar-right{margin-left:auto;}
.topbar-btn{color:rgba(255,255,255,0.85);font-size:13px;font-weight:700;background:transparent;
  border:1.5px solid rgba(255,255,255,0.35);border-radius:6px;padding:5px 12px;cursor:pointer;
  transition:all .2s;font-family:'Nunito',sans-serif;}
.topbar-btn:hover{background:rgba(255,255,255,0.15);color:white;}
.topbar-btn.active{background:var(--orange);border-color:var(--orange);}

.progress-bar{background:white;border-bottom:1px solid var(--border);padding:10px 2rem;display:flex;align-items:center;gap:6px;overflow-x:auto;}
.step-dot{display:flex;flex-direction:column;align-items:center;gap:3px;cursor:pointer;min-width:56px;transition:transform .15s;}
.step-dot:hover{transform:scale(1.08);}
.step-circle{width:30px;height:30px;border-radius:50%;display:flex;align-items:center;justify-content:center;font-weight:800;font-size:13px;background:#E0E0E0;color:#777;transition:all .25s;}
.step-dot.active .step-circle{background:var(--pri-800);color:white;box-shadow:0 0 0 4px #C5CAE9;}
.step-dot.done .step-circle{background:var(--green);color:white;}
.step-dot.teacher-only .step-circle{background:var(--orange-light);color:var(--orange);border:2px solid var(--orange);}
.step-label{font-size:10px;color:var(--text-muted);text-align:center;line-height:1.2;max-width:56px;}
.step-conn{flex:1;height:2px;background:#E0E0E0;min-width:10px;margin-bottom:14px;}
.step-conn.done{background:var(--green);}

.main{max-width:920px;margin:0 auto;padding:28px 20px 60px;}
.step-content{display:none;}
.step-content.active{display:block;}

.hero{background:var(--grad-pri);border-radius:var(--radius-lg);padding:2.2rem 2.5rem;
  color:white;position:relative;overflow:hidden;margin-bottom:24px;}
.hero::before{content:'↑';position:absolute;right:1.5rem;top:0;font-size:140px;color:rgba(255,255,255,0.06);pointer-events:none;line-height:1;}
.hero-label{font-size:11px;font-weight:800;text-transform:uppercase;letter-spacing:.1em;opacity:.75;margin-bottom:6px;}
.hero h1{font-size:22px;font-weight:900;line-height:1.25;margin-bottom:8px;}
.hero-sub{font-size:14px;opacity:.85;margin-bottom:16px;max-width:540px;line-height:1.5;}
.hero-meta{display:flex;gap:8px;flex-wrap:wrap;}
.hero-chip{background:rgba(255,255,255,0.18);padding:4px 12px;border-radius:20px;font-size:12px;font-weight:700;}

.section{background:white;border-radius:var(--radius-lg);border:1px solid var(--border);
  box-shadow:var(--shadow);padding:24px;margin-bottom:18px;
  opacity:0;transform:translateY(10px);transition:opacity .35s,transform .35s;}
.section.visible{opacity:1;transform:none;}
.section-hdr{display:flex;align-items:center;gap:10px;margin-bottom:18px;}
.section-num{width:34px;height:34px;border-radius:10px;background:var(--pri-50);color:var(--pri-800);
  font-weight:900;font-size:15px;display:flex;align-items:center;justify-content:center;flex-shrink:0;}
.section h2{font-size:17px;font-weight:900;color:var(--pri-800);line-height:1.3;}
.section h3{font-size:14px;font-weight:800;color:var(--text);margin:16px 0 8px;}
.section p,.section li{font-size:14px;line-height:1.65;color:var(--text-secondary);}
.section ul{padding-left:18px;margin-top:6px;}
.section li{margin-bottom:4px;}

.sf-badge{display:inline-flex;align-items:center;gap:5px;padding:3px 11px;border-radius:20px;font-size:12px;font-weight:700;margin-bottom:12px;}
.sf-ea{background:var(--blue-light);color:var(--blue);}
.sf-pa{background:var(--teal-light);color:var(--teal);}
.sf-ga{background:var(--purple-light);color:var(--purple);}
.time-badge{margin-left:auto;background:#F5F5F5;color:var(--text-muted);padding:3px 10px;border-radius:20px;font-size:12px;font-weight:600;white-space:nowrap;}

.book-ref{background:#fdf4ff;border:1.5px solid #d8b4fe;border-radius:var(--radius-md);padding:13px 16px;margin:12px 0;font-size:13.5px;color:#581c87;}
.book-ref strong{color:#6b21a8;font-weight:800;}
.media-link{display:flex;align-items:center;gap:10px;padding:12px 15px;background:var(--teal-light);border:1.5px solid #99f6e4;border-radius:var(--radius-md);text-decoration:none;color:var(--teal);font-weight:700;font-size:13.5px;transition:all .2s;margin-bottom:8px;}
.media-link:hover{background:#a7f3d0;transform:translateX(2px);}
.media-desc{font-size:12px;color:#0f766e;font-weight:400;}

.info-box{border-radius:var(--radius-md);padding:13px 16px;margin:10px 0;font-size:13.5px;line-height:1.6;}
.info-box.violet{background:var(--pri-50);border-left:3px solid var(--pri-500);color:var(--pri-900);}
.info-box.green{background:var(--green-light);border-left:3px solid var(--green);color:#1b5e20;}
.info-box.orange{background:var(--orange-light);border-left:3px solid var(--orange);color:#78350f;}
.info-box.teal{background:var(--teal-light);border-left:3px solid var(--teal);color:#134e4a;}
.info-box.red{background:var(--red-light);border-left:3px solid var(--red);color:#7f1d1d;}

.teacher-box{background:#fffbeb;border:1.5px solid #fbbf24;border-radius:var(--radius-md);padding:13px 16px;margin:12px 0;font-size:13.5px;color:#92400e;display:none;}
.teacher-box.visible{display:block;}
.teacher-box-hdr{font-weight:900;font-size:12px;text-transform:uppercase;letter-spacing:.05em;margin-bottom:5px;}

.task{border:1.5px solid var(--pri-400);border-radius:var(--radius-md);overflow:hidden;margin-bottom:14px;}
.task-hdr{background:var(--pri-800);padding:10px 14px;display:flex;align-items:center;gap:8px;}
.task-num{width:24px;height:24px;border-radius:50%;background:rgba(255,255,255,0.2);color:white;font-weight:900;font-size:12px;display:flex;align-items:center;justify-content:center;flex-shrink:0;}
.task-hdr-text{color:white;font-size:13px;font-weight:800;}
.task-hdr-sub{color:rgba(255,255,255,0.75);font-size:11px;font-weight:600;margin-top:1px;}
.task-body{background:var(--bg-page);padding:14px 16px;font-size:13.5px;color:var(--text-secondary);line-height:1.6;}
.task-body ul{padding-left:16px;margin-top:6px;}
.task-body li{margin-bottom:4px;}

.solution-btn{border:1.5px solid var(--border);background:white;border-radius:var(--radius-sm);padding:7px 14px;font-weight:700;color:var(--text-secondary);cursor:pointer;font-family:'Nunito',sans-serif;font-size:13px;margin-top:8px;transition:all .2s;}
.solution-btn:hover{border-color:var(--pri-800);color:var(--pri-800);background:var(--pri-50);}
.solution-reveal{background:var(--green-light);border-left:3px solid var(--green);border-radius:0 8px 8px 0;padding:10px 14px;color:#1b5e20;font-size:13px;display:none;margin-top:8px;line-height:1.6;}
.solution-reveal.visible{display:block;}
.solution-reveal ul{padding-left:16px;margin-top:6px;}
.solution-reveal li{margin-bottom:4px;}

/* KREISLAUF LÜCKEN */
.kreislauf-wrap{display:flex;flex-wrap:wrap;gap:8px;align-items:center;justify-content:center;
  padding:18px;background:var(--pri-50);border-radius:var(--radius-lg);margin:12px 0;border:1.5px solid #C5CAE9;}
.kl-box-fixed{padding:9px 14px;border-radius:10px;font-size:13px;font-weight:700;text-align:center;min-width:110px;}
.kl-violet{background:var(--pri-50);color:var(--pri-800);border:1.5px solid var(--pri-400);}
.kl-green{background:var(--green-light);color:#1b5e20;border:1.5px solid var(--green);}
.kl-gap-box{background:white;border:2px dashed var(--border);color:var(--text-secondary);
  min-width:130px;padding:8px 10px;border-radius:10px;}
.kl-gap-box.correct{border-color:var(--green);background:var(--green-light);}
.kl-gap-box.wrong{border-color:var(--red);background:var(--red-light);}
.kl-input{border:none;outline:none;background:transparent;font-family:'Nunito',sans-serif;
  font-size:13px;font-weight:700;color:var(--text);width:100%;text-align:center;}
.kl-input::placeholder{color:#CCC;font-weight:400;font-style:italic;}
.kl-arrow{font-size:20px;color:var(--text-muted);}
.kreislauf-actions{display:flex;gap:8px;margin-top:10px;flex-wrap:wrap;}
.kreislauf-btn{padding:7px 16px;border-radius:var(--radius-sm);font-family:'Nunito',sans-serif;font-weight:800;font-size:13px;cursor:pointer;transition:all .2s;}
.kreislauf-btn.check{background:var(--pri-800);color:white;border:none;}
.kreislauf-btn.check:hover{background:var(--pri-900);}
.kreislauf-btn.reset{background:white;color:var(--text-secondary);border:1.5px solid var(--border);}
.kreislauf-btn.reset:hover{border-color:var(--text);}
#kl-feedback{margin-top:10px;padding:11px 15px;border-radius:var(--radius-sm);font-size:13.5px;display:none;line-height:1.6;}

/* SPIRAL */
.spiral-box{background:var(--red-light);border:1.5px solid #fca5a5;border-radius:var(--radius-lg);padding:16px;margin:12px 0;}
.spiral-step{display:flex;align-items:center;gap:9px;padding:7px 0;}
.spiral-step:not(:last-child){border-bottom:1px dashed #fca5a5;}
.spiral-num{width:26px;height:26px;border-radius:50%;background:var(--red);color:white;font-weight:900;font-size:12px;display:flex;align-items:center;justify-content:center;flex-shrink:0;}
.spiral-text{font-size:13.5px;color:#9f1239;font-weight:600;}

/* COMPARE TABLE */
.compare-table{width:100%;border-collapse:collapse;font-size:13.5px;margin:12px 0;}
.compare-table th{padding:9px 12px;font-weight:800;font-size:12px;text-align:left;}
.compare-table th:nth-child(2){background:var(--teal);color:white;border-radius:8px 8px 0 0;}
.compare-table th:nth-child(3){background:var(--orange);color:white;border-radius:8px 8px 0 0;}
.compare-table td{padding:8px 12px;border-bottom:1px solid #F5F5F5;vertical-align:top;line-height:1.5;color:var(--text-secondary);}
.compare-table tr:last-child td{border-bottom:none;}
.compare-table .row-label{font-weight:700;color:var(--text);background:#F9F9F9;}

/* QUIZ */
.quiz-block{border:1.5px solid var(--border);border-radius:var(--radius-lg);padding:16px;margin-bottom:14px;}
.quiz-q{font-size:14px;font-weight:700;color:var(--text);margin-bottom:10px;line-height:1.4;}
.quiz-opts{display:flex;flex-direction:column;gap:6px;margin-bottom:8px;}
.quiz-opt{border:1.5px solid var(--border);border-radius:var(--radius-sm);padding:10px 13px;background:white;font-size:13.5px;font-weight:600;cursor:pointer;text-align:left;display:flex;align-items:center;gap:8px;transition:all .15s;font-family:'Nunito',sans-serif;}
.quiz-opt:hover:not(:disabled){border-color:var(--pri-400);background:var(--pri-50);}
.quiz-opt.correct{border-color:var(--green);background:var(--green-light);color:#1b5e20;}
.quiz-opt.wrong{border-color:var(--red);background:var(--red-light);color:#7f1d1d;}
.quiz-opt.show-correct{border-color:var(--green);background:var(--green-light);opacity:.65;}
.opt-letter{width:22px;height:22px;border-radius:6px;background:#F5F5F5;color:var(--text-muted);font-weight:900;font-size:11px;display:flex;align-items:center;justify-content:center;flex-shrink:0;}
.quiz-fb{padding:9px 13px;border-radius:var(--radius-sm);font-size:13px;display:none;margin-bottom:8px;}
.quiz-fb.show{display:block;}
.quiz-fb.correct{background:var(--green-light);color:#1b5e20;}
.quiz-fb.wrong{background:var(--red-light);color:#7f1d1d;}
.quiz-retry{display:none;padding:6px 14px;border-radius:var(--radius-sm);background:var(--red);color:white;border:none;cursor:pointer;font-family:'Nunito',sans-serif;font-weight:800;font-size:12px;}
.quiz-retry:hover{opacity:.85;}
.quiz-retry.show{display:inline-flex;align-items:center;gap:5px;}

/* POLL */
.poll-opts{display:flex;flex-direction:column;gap:7px;margin-top:10px;}
.poll-opt{padding:11px 14px;border-radius:var(--radius-sm);border:2px solid var(--border);cursor:pointer;font-size:13.5px;font-weight:600;background:white;text-align:left;width:100%;transition:all .2s;font-family:'Nunito',sans-serif;}
.poll-opt:hover:not(:disabled){border-color:var(--pri-400);background:var(--pri-50);}
.poll-opt.sel-correct{border-color:var(--green);background:var(--green-light);color:#1b5e20;}
.poll-opt.sel-wrong{border-color:var(--red);background:var(--red-light);color:#7f1d1d;}
.poll-opt.show-correct{border-color:var(--green);background:var(--green-light);opacity:.6;}
.poll-fb{margin-top:10px;padding:10px 14px;border-radius:var(--radius-sm);font-size:13.5px;display:none;}
.poll-fb.show{display:block;}
.poll-fb.correct{background:var(--green-light);color:#1b5e20;border:1px solid #86efac;}
.poll-fb.wrong{background:var(--red-light);color:#7f1d1d;border:1px solid #fca5a5;}
.poll-retry{display:none;margin-top:8px;padding:6px 14px;border-radius:var(--radius-sm);background:white;color:var(--pri-800);border:2px solid var(--pri-500);cursor:pointer;font-family:'Nunito',sans-serif;font-weight:800;font-size:12px;}
.poll-retry:hover{background:var(--pri-50);}
.poll-retry.show{display:inline-flex;align-items:center;gap:5px;}

.nav-row{display:flex;justify-content:flex-end;gap:10px;margin-top:22px;}
.btn-prev{padding:10px 20px;border-radius:var(--radius-md);border:1.5px solid var(--border);background:white;color:var(--text-secondary);cursor:pointer;font-family:'Nunito',sans-serif;font-weight:800;font-size:13.5px;transition:all .2s;}
.btn-prev:hover{border-color:var(--text);}
.btn-next{padding:10px 20px;border-radius:var(--radius-md);border:none;background:var(--pri-800);color:white;cursor:pointer;font-family:'Nunito',sans-serif;font-weight:800;font-size:13.5px;transition:all .2s;}
.btn-next:hover{background:var(--pri-900);}

#modal-overlay{display:none;position:fixed;inset:0;background:rgba(26,35,126,0.55);z-index:200;align-items:center;justify-content:center;backdrop-filter:blur(3px);}
#modal-overlay.open{display:flex;}
#pin-modal{background:white;border-radius:20px;padding:30px 26px 22px;width:300px;max-width:95vw;box-shadow:var(--shadow-lg);animation:fadeUp .22s ease;}
#pin-modal h3{font-size:18px;font-weight:900;color:var(--pri-800);text-align:center;margin-bottom:4px;}
#pin-modal p{font-size:13px;color:var(--text-secondary);text-align:center;margin-bottom:18px;}
.pin-dots{display:flex;justify-content:center;gap:8px;margin-bottom:18px;}
.pin-dot{width:14px;height:14px;border-radius:50%;background:#E0E0E0;transition:background .15s;}
.pin-dot.filled{background:var(--pri-800);}
.pin-pad{display:grid;grid-template-columns:repeat(3,1fr);gap:7px;}
.pin-key{padding:13px;border-radius:9px;border:1.5px solid var(--border);background:white;font-family:'Nunito',sans-serif;font-weight:800;font-size:17px;color:var(--text);cursor:pointer;transition:all .15s;text-align:center;}
.pin-key:hover{border-color:var(--pri-400);background:var(--pri-50);}
.pin-key:active{transform:scale(.95);}
.pin-key.del{font-size:13px;color:var(--red);border-color:#FFCDD2;}
.pin-key.del:hover{background:var(--red-light);}
#pin-error{text-align:center;color:var(--red);font-size:12.5px;font-weight:700;margin-top:10px;min-height:16px;}
@keyframes shake{0%,100%{transform:translateX(0);}20%,60%{transform:translateX(-7px);}40%,80%{transform:translateX(7px);}}
.shake{animation:shake .38s ease;}

.abfrage-section{display:none;margin-top:18px;}
.abfrage-section.visible{display:block;}
.frage-card{border:1.5px solid var(--border);border-radius:var(--radius-lg);padding:18px;margin-bottom:12px;background:white;}
.fk-badge{display:inline-block;padding:2px 9px;border-radius:20px;font-size:11px;font-weight:800;font-family:'Nunito',sans-serif;margin-bottom:8px;}
.fk-wissen{background:var(--blue-light);color:var(--blue);}
.fk-kritisch{background:var(--red-light);color:var(--red);}
.fk-komm{background:var(--teal-light);color:var(--teal);}
.fk-kreativ{background:var(--orange-light);color:var(--orange);}
.frage-text{font-size:14.5px;font-weight:800;color:var(--text);margin-bottom:10px;line-height:1.4;}
.erw-toggle{display:inline-flex;align-items:center;gap:5px;padding:5px 12px;border-radius:7px;background:#F5F5F5;color:var(--text-secondary);border:none;cursor:pointer;font-family:'Nunito',sans-serif;font-weight:700;font-size:12px;transition:all .2s;}
.erw-toggle:hover{background:#E0E0E0;}
.erw-content{display:none;margin-top:8px;padding:10px 13px;background:var(--orange-light);border-radius:8px;font-size:13px;color:#78350f;line-height:1.55;}
.erw-content.open{display:block;}
.erw-content ul{padding-left:16px;margin-top:5px;}
.erw-content li{margin-bottom:3px;}
.print-btn{display:inline-flex;align-items:center;gap:6px;padding:8px 16px;border-radius:var(--radius-sm);background:var(--orange);color:white;border:none;cursor:pointer;font-family:'Nunito',sans-serif;font-weight:800;font-size:13px;margin-top:4px;}
.print-btn:hover{opacity:.85;}

@keyframes fadeUp{from{opacity:0;transform:translateY(10px);}to{opacity:1;transform:none;}}
@media(max-width:640px){.main{padding:14px 12px 40px;}.section{padding:16px;}.topbar{padding:0 1rem;}}
@media print{
  #modal-overlay,.nav-row,.topbar,.progress-bar,.section:not(.print-section){display:none!important;}
  .abfrage-section{display:block!important;}.erw-content{display:block!important;}
  body{background:white;}.frage-card{page-break-inside:avoid;}
}
</style>
</head>
<body>

<div class="topbar">
  <a class="topbar-logo" href="WR_Q12_index.html">WR <span>&</span> Recht</a>
  <span class="topbar-chip">Q12</span>
  <span class="topbar-chip" style="background:rgba(255,255,255,0.12);">2.3.2</span>
  <div class="topbar-right">
    <button class="topbar-btn" id="teacher-btn" onclick="openPinModal()">🎓 Lehrkraft</button>
  </div>
</div>

<div class="progress-bar" id="progress-bar"></div>

<div class="main">

  <!-- STEP 0: EINSTIEG -->
  <div class="step-content active" data-step="0">
    <div class="hero section visible">
      <div class="hero-label">Wirtschaft und Recht · Q12 · Stunde 2</div>
      <h1>2.3.2 Welche Auswirkungen können Tarifabschlüsse auf Wachstum und Beschäftigung haben?</h1>
      <div class="hero-sub">Kreislaufanalyse, Lohn-Preis-Spirale, Gewinn-Preis-Spirale und zwei ökonomische Perspektiven im Vergleich.</div>
      <div class="hero-meta">
        <span class="hero-chip">📖 S. 110–113</span>
        <span class="hero-chip">⏱ 40 Min.</span>
        <span class="hero-chip">startup.WR Bayern</span>
      </div>
    </div>

    <div class="section">
      <div class="section-hdr">
        <div class="section-num">1</div>
        <h2>Einstieg: Was passiert nach einem Tarifabschluss?</h2>
        <span class="time-badge">⏱ 5 Min.</span>
      </div>
      <span class="sf-badge sf-ea">👤 Einzelarbeit</span>

      <div class="book-ref">
        <strong>📖 Schau dir M1</strong> auf <strong>Seite 110</strong> an: den Demonstrationszug mit dem Motto „Löhne rauf, Preise runter".
      </div>

      <p style="margin-bottom:12px;">Stell dir vor: Die Gewerkschaft hat eine Lohnerhöhung von 8 % durchgesetzt. Was passiert als nächstes?</p>

      <div class="poll-opts" id="poll-auswirkung">
        <button class="poll-opt" onclick="pollAnswer('poll-auswirkung',this,true,'Richtig! Das ist die nachfrageorientierte Sicht: Höhere Löhne → mehr Kaufkraft → mehr Konsum → steigende Nachfrage → mehr Produktion → mehr Beschäftigung. Das ist das Kernargument der Gewerkschaften.')">
          A) Beschäftigte haben mehr Geld → kaufen mehr → Konjunktur wird angekurbelt.
        </button>
        <button class="poll-opt" onclick="pollAnswer('poll-auswirkung',this,false,'Das ist die angebotsorientierte Sicht der Arbeitgeber: Höhere Lohnkosten → weniger Investitionen → weniger Einstellungen. Ob das dominiert, hängt von der Branche und Konjunkturlage ab – es ist keine automatische Folge.')">
          B) Unternehmen zahlen mehr → stellen weniger ein → Arbeitslosigkeit steigt.
        </button>
        <button class="poll-opt" onclick="pollAnswer('poll-auswirkung',this,false,'Möglich, aber nicht zwingend. Ob Unternehmen Lohnkosten an Kunden weitergeben, hängt von ihrer Marktmacht ab. Manche nehmen zunächst niedrigere Gewinne in Kauf.')">
          C) Unternehmen erhöhen Preise sofort → Inflation entsteht automatisch.
        </button>
        <button class="poll-opt" onclick="pollAnswer('poll-auswirkung',this,false,'Das ist ein mittelfristiges Risiko, kein Automatismus. Produktionsverlagerung erfordert Zeit und hohe Investitionen – ein einmaliger Tarifabschluss löst das nicht sofort aus.')">
          D) Unternehmen verlagern Produktion sofort ins Ausland.
        </button>
      </div>
      <div class="poll-fb" id="poll-auswirkung-fb"></div>
      <button class="poll-retry" id="poll-auswirkung-retry" style="display:none;" onclick="retryPoll('poll-auswirkung')">↩ Nochmal</button>

      <p style="margin-top:12px;font-size:13.5px;color:var(--text-secondary);">Tatsächlich sind alle Antworten je nach wirtschaftlicher Ausgangslage und Perspektive denkbar. Genau das analysiert ihr heute.</p>

      <div class="teacher-box">
        <div class="teacher-box-hdr">🎓 Lehrkraft-Hinweis</div>
        Einstieg bewusst mehrdeutig: keine eindeutige Antwort, um Kontroverse zu aktivieren. Beide Perspektiven (Nachfrage- vs. angebotsorientiert) werden in der Stunde herausgearbeitet. Tipp: A und B kurz diskutieren lassen, dann: „Genau das streiten Fratzscher und Hüther."
      </div>
    </div>

    <div class="nav-row">
      <button class="btn-next" onclick="nextStep()">Weiter: Kreislaufanalyse →</button>
    </div>
  </div>

  <!-- STEP 1: KREISLAUFANALYSE -->
  <div class="step-content" data-step="1">
    <div class="section">
      <div class="section-hdr">
        <div class="section-num">2</div>
        <h2>Erarbeitung: Lohnerhöhungen im Wirtschaftskreislauf</h2>
        <span class="time-badge">⏱ 12 Min.</span>
      </div>
      <span class="sf-badge sf-pa">👥 Partnerarbeit</span>

      <div class="book-ref">
        <strong>📖 Lest M1–M3</strong> auf <strong>Seite 110–111</strong> und die Aufgaben 1–4 auf <strong>Seite 113</strong>.
      </div>

      <a href="https://www.ccbuchner.de/clip_code/82023-224" target="_blank" class="media-link">
        <span style="font-size:20px;">🔗</span>
        <div>
          <div>Digitale Materialien 82023-224 (C.C. Buchner)</div>
          <div class="media-desc">Online-Materialien zu 2.3.2 · Aufgaben S. 113</div>
        </div>
      </a>

      <div class="task" style="margin-top:14px;">
        <div class="task-hdr">
          <div class="task-num">1</div>
          <div>
            <div class="task-hdr-text">Buchaufgabe S. 113, Aufg. 1 · Kreislaufanalyse</div>
            <div class="task-hdr-sub">Partnerarbeit · Lückendiagramm</div>
          </div>
        </div>
        <div class="task-body">
          Belege anhand einer Kreislaufanalyse, dass Lohnerhöhungen „kein Schaden für die Wirtschaft" sein müssen. Ergänze die fehlenden Stationen (graue Felder):
          <div class="kreislauf-wrap" id="kreislauf-wrap" style="margin-top:12px;">
            <div class="kl-box-fixed kl-violet">💰 Lohnerhöhung</div>
            <span class="kl-arrow">→</span>
            <div class="kl-gap-box"><input class="kl-input" id="kl-1" type="text" placeholder="???"></div>
            <span class="kl-arrow">→</span>
            <div class="kl-box-fixed kl-violet">📈 höhere Nachfrage</div>
            <span class="kl-arrow">→</span>
            <div class="kl-gap-box"><input class="kl-input" id="kl-2" type="text" placeholder="???"></div>
            <span class="kl-arrow">→</span>
            <div class="kl-gap-box"><input class="kl-input" id="kl-3" type="text" placeholder="???"></div>
            <span class="kl-arrow">→</span>
            <div class="kl-box-fixed kl-green">💵 höhere Staatseinnahmen</div>
          </div>
          <div class="kreislauf-actions">
            <button class="kreislauf-btn check" onclick="checkKreislauf()">✅ Antworten prüfen</button>
            <button class="kreislauf-btn reset" onclick="resetKreislauf()">↩ Zurücksetzen</button>
          </div>
          <div id="kl-feedback"></div>
          <p style="font-size:12.5px;color:var(--text-muted);margin-top:8px;font-style:italic;">Einschränkung: Ein Teil des Konsums fließt ins Ausland (Importe) → geringerer Inland-Effekt.</p>
        </div>
      </div>

      <div class="task">
        <div class="task-hdr">
          <div class="task-num">2</div>
          <div>
            <div class="task-hdr-text">Buchaufgabe S. 113, Aufg. 2 · Beurteilung</div>
            <div class="task-hdr-sub">Partnerarbeit · Schriftlich</div>
          </div>
        </div>
        <div class="task-body">
          Beurteilt, ob die Forderungen „Löhne rauf" und „Preise runter" gleichzeitig verwirklichbar sind (M1).
          <div style="margin-top:8px;">
            <button class="solution-btn" onclick="toggleSolution('sol-k2')">📋 Musterlösung</button>
            <div class="solution-reveal" id="sol-k2">
              <strong>Beurteilung:</strong> Grundsätzlich schwer gleichzeitig zu verwirklichen.
              <ul>
                <li>Höhere Löhne → höhere Kosten → Preiserhöhung wahrscheinlich (Angebotsseite)</li>
                <li>Preise sinken nur, wenn Produktivitätssteigerungen die Kosten mehr als ausgleichen</li>
                <li>ODER: Unternehmen nehmen niedrigere Gewinnmargen in Kauf (bei guter Ertragslage möglich)</li>
                <li><strong>Fazit:</strong> In der Regel nicht dauerhaft gleichzeitig möglich – außer bei starkem Produktivitätswachstum</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="nav-row">
      <button class="btn-prev" onclick="prevStep()">← Zurück</button>
      <button class="btn-next" onclick="nextStep()">Weiter: Zwei Sichtweisen →</button>
    </div>
  </div>

  <!-- STEP 2: ZWEI SICHTWEISEN -->
  <div class="step-content" data-step="2">
    <div class="section">
      <div class="section-hdr">
        <div class="section-num">3</div>
        <h2>Vertiefung: Fratzscher vs. Hüther – Zwei Sichtweisen</h2>
        <span class="time-badge">⏱ 12 Min.</span>
      </div>
      <span class="sf-badge sf-ga">👨‍👩‍👧 Gruppenarbeit</span>

      <div class="book-ref">
        <strong>📖 Lest M3</strong> (Fratzscher/Hüther, S. 110/111), <strong>M4</strong> (Karikatur, S. 112) und <strong>M5</strong> (Forum, S. 112/113). Bearbeitet Aufgaben 3–5 (S. 113).
      </div>

      <h3>Nachfrage- vs. angebotsorientierte Sicht</h3>
      <table class="compare-table">
        <thead>
          <tr>
            <th style="background:#F9F9F9;color:var(--text);">Aspekt</th>
            <th>🔴 Gewerkschaften (Nachfrage)</th>
            <th>🔵 Arbeitgeber (Angebot)</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="row-label">Kernthese</td>
            <td>Löhne hinken Inflation hinterher; mehr Kaufkraft stärkt Wachstum</td>
            <td>Lohnkosten gefährden Wettbewerbsfähigkeit; Produktivität entscheidet</td>
          </tr>
          <tr>
            <td class="row-label">Spiralen-These</td>
            <td>Keine Lohn-Preis-Spirale – sondern eine <em>Gewinn-Preis-Spirale</em></td>
            <td>Gefahr der Lohn-Preis-Spirale (Löhne → Preise → neue Forderungen)</td>
          </tr>
          <tr>
            <td class="row-label">Fachkräfte</td>
            <td>Höhere Löhne ziehen qualifizierte Arbeitskräfte an</td>
            <td>Zu hohe Lohnkosten fördern Automatisierung / Verlagerung</td>
          </tr>
          <tr>
            <td class="row-label">Kleine Betriebe</td>
            <td>Niedriglöhne in kleinen Betrieben sind ungerecht</td>
            <td>Kleine Betriebe können hohe Abschlüsse oft nicht tragen</td>
          </tr>
        </tbody>
      </table>

      <h3>Die Lohn-Preis-Spirale (Arbeitgeberargument)</h3>
      <div class="spiral-box">
        <div class="spiral-step"><div class="spiral-num">1</div><div class="spiral-text">Tarifabschluss → Löhne steigen</div></div>
        <div class="spiral-step"><div class="spiral-num">2</div><div class="spiral-text">Unternehmen erhöhen Preise → Inflation steigt</div></div>
        <div class="spiral-step"><div class="spiral-num">3</div><div class="spiral-text">Reallohn sinkt wieder → Gewerkschaft fordert neue Lohnerhöhung</div></div>
        <div class="spiral-step"><div class="spiral-num">4</div><div class="spiral-text">→ Spirale dreht sich weiter …</div></div>
      </div>

      <div class="info-box violet" style="margin-top:12px;">
        <strong>💡 Die Gewinn-Preis-Spirale (Gegenargument der Gewerkschaften):</strong> Nicht Löhne, sondern überhöhte Unternehmensgewinne haben nach der Pandemie die Preise getrieben. Fratzscher (DIW) stützt diese These – Hüther (IW Köln) widerspricht.
      </div>

      <div class="task" style="margin-top:14px;">
        <div class="task-hdr">
          <div class="task-num">4</div>
          <div>
            <div class="task-hdr-text">Buchaufgabe S. 113, Aufg. 4 · Argumente zuordnen</div>
            <div class="task-hdr-sub">Gruppenarbeit · Analyse M3</div>
          </div>
        </div>
        <div class="task-body">
          Erarbeitet aus M3 mögliche gesamtwirtschaftliche Folgen von Lohnerhöhungen und ordnet die Argumente den Positionen zu (Gewerkschaft / Arbeitgeberverbände).
          <div style="margin-top:8px;">
            <button class="solution-btn" onclick="toggleSolution('sol-k4')">📋 Musterlösung</button>
            <div class="solution-reveal" id="sol-k4">
              <strong>Gewerkschaft (Fratzscher-Seite):</strong>
              <ul>
                <li>Löhne sind real gesunken → Inflationsausgleich ist keine Erhöhung, sondern Schadenskorrektur</li>
                <li>Unternehmensgewinne stark gestiegen → Verteilungsgerechtigkeit gefordert</li>
                <li>Gewinn-Preis-Spirale: Unternehmen haben Margen über Kosten hinaus erhöht</li>
              </ul>
              <strong>Arbeitgeberverbände (Hüther-Seite):</strong>
              <ul>
                <li>Maßstab: Produktivitätsentwicklung im Unternehmen</li>
                <li>Nicht alle Branchen können gleich hohe Abschlüsse verkraften (Bäckerei ≠ DAX-Konzern)</li>
                <li>Planungssicherheit durch lange Laufzeiten wichtiger als hohe Einmalzahlungen</li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="task">
        <div class="task-hdr">
          <div class="task-num">5</div>
          <div>
            <div class="task-hdr-text">Buchaufgabe S. 113, Aufg. 5 · Lohn-Preis-Spirale diskutieren</div>
            <div class="task-hdr-sub">Gruppenarbeit · Beurteilung</div>
          </div>
        </div>
        <div class="task-body">
          Diskutiert, inwiefern Lohnerhöhungen zu einer Lohn-Preis-Spirale, geringerem Wirtschaftswachstum oder einem Verlust von Arbeitsplätzen führen können (M5, Buchaufgabe Aufg. 5 a–c).
          <div style="margin-top:8px;">
            <button class="solution-btn" onclick="toggleSolution('sol-k5')">📋 Musterlösung</button>
            <div class="solution-reveal" id="sol-k5">
              <strong>a) Lohn-Preis-Spirale:</strong> Möglich, wenn Unternehmen Lohnkosten auf Preise überwälzen UND Gewerkschaften daraufhin erneut höhere Löhne fordern. Empirisch umstritten – Gegenthese: Gewinn-Preis-Spirale.<br><br>
              <strong>b) Geringeres Wirtschaftswachstum:</strong> Möglich, wenn höhere Lohnkosten zu weniger Investitionen führen (angebotsorientiert). Gegenargument: Kaufkrafteffekt kann Wachstum ankurbeln (nachfrageorientiert).<br><br>
              <strong>c) Verlust von Arbeitsplätzen:</strong> Möglich bei Automatisierung oder Verlagerung ins Ausland. Gegenargument: Höhere Löhne ziehen Fachkräfte an und sichern langfristig Beschäftigung.
            </div>
          </div>
        </div>
      </div>

      <div class="teacher-box">
        <div class="teacher-box-hdr">🎓 Fratzscher / Hüther</div>
        Marcel Fratzscher (DIW Berlin) = nachfrageorientierte Position. Michael Hüther (IW Köln) = angebotsorientierte Position. Beide sind renommierte Wirtschaftsforscher – der Streit ist fachwissenschaftlich, nicht politisch-ideologisch. Für Klausur: Schüler sollen beide Positionen darstellen und eigenständig beurteilen.
      </div>
    </div>

    <!-- QUIZ -->
    <div class="section">
      <div class="section-hdr">
        <div class="section-num">✓</div>
        <h2>Selbstcheck: Auswirkungen von Tarifabschlüssen</h2>
        <span class="time-badge">⏱ 5 Min.</span>
      </div>
      <span class="sf-badge sf-ea">👤 Einzelarbeit</span>

      <div class="quiz-block">
        <div class="quiz-q">1. Was versteht man unter der „Gewinn-Preis-Spirale" (Gewerkschaftsargument)?</div>
        <div class="quiz-opts" id="aq1">
          <button class="quiz-opt" onclick="quizAnswer('aq1',this,false)"><span class="opt-letter">A</span> Unternehmen und Beschäftigte steigern gemeinsam die Preise.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq1',this,false)"><span class="opt-letter">B</span> Höhere Löhne führen zu höheren Preisen, die wieder höhere Löhne erfordern.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq1',this,true)"><span class="opt-letter">C</span> Nicht Löhne, sondern überhöhte Unternehmensgewinne haben Preise nach oben getrieben.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq1',this,false)"><span class="opt-letter">D</span> Steigende Staatsausgaben führen zu Unternehmensgewinnen.</button>
        </div>
        <div class="quiz-fb" id="aq1-fb"></div>
        <button class="quiz-retry" id="aq1-retry" onclick="retryQuiz('aq1')">↩ Nochmal</button>
      </div>

      <div class="quiz-block">
        <div class="quiz-q">2. Welche Aussage beschreibt die <em>angebotsorientierte</em> Sicht auf Lohnerhöhungen?</div>
        <div class="quiz-opts" id="aq2">
          <button class="quiz-opt" onclick="quizAnswer('aq2',this,true)"><span class="opt-letter">A</span> Höhere Löhne = höhere Kosten → weniger Arbeitsnachfrage → mögliche Arbeitslosigkeit.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq2',this,false)"><span class="opt-letter">B</span> Höhere Löhne → mehr Konsum → mehr Produktion und Beschäftigung.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq2',this,false)"><span class="opt-letter">C</span> Der Staat muss Löhne regulieren, damit der Markt funktioniert.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq2',this,false)"><span class="opt-letter">D</span> Tarifabschlüsse haben auf das BIP keine nachweisbare Wirkung.</button>
        </div>
        <div class="quiz-fb" id="aq2-fb"></div>
        <button class="quiz-retry" id="aq2-retry" onclick="retryQuiz('aq2')">↩ Nochmal</button>
      </div>

      <div class="quiz-block">
        <div class="quiz-q">3. Warum profitiert laut dem Kreislaufargument auch der Staat von Lohnerhöhungen?</div>
        <div class="quiz-opts" id="aq3">
          <button class="quiz-opt" onclick="quizAnswer('aq3',this,false)"><span class="opt-letter">A</span> Er zahlt weniger Sozialleistungen, weil Löhne steigen.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq3',this,true)"><span class="opt-letter">B</span> Höhere Löhne → mehr Steuer- und Sozialversicherungseinnahmen → mehr Spielraum für öffentliche Ausgaben.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq3',this,false)"><span class="opt-letter">C</span> Schulden sinken, weil die Inflationsrate zurückgeht.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq3',this,false)"><span class="opt-letter">D</span> Er erhält direkte Zahlungen von Gewerkschaften.</button>
        </div>
        <div class="quiz-fb" id="aq3-fb"></div>
        <button class="quiz-retry" id="aq3-retry" onclick="retryQuiz('aq3')">↩ Nochmal</button>
      </div>

      <div class="quiz-block">
        <div class="quiz-q">4. Was ist eine „Inflationsausgleichsprämie" – und warum ist sie ökonomisch ein Kompromiss?</div>
        <div class="quiz-opts" id="aq4">
          <button class="quiz-opt" onclick="quizAnswer('aq4',this,false)"><span class="opt-letter">A</span> Eine staatliche Zahlung an Unternehmen als Ausgleich für Lohnerhöhungen.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq4',this,false)"><span class="opt-letter">B</span> Eine dauerhafte Lohnerhöhung, die an die Inflationsrate gekoppelt ist.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq4',this,true)"><span class="opt-letter">C</span> Eine steuerfreie Einmalzahlung: schützt die Kaufkraft der Arbeitnehmer, ohne die dauerhaften Lohnkosten zu erhöhen.</button>
          <button class="quiz-opt" onclick="quizAnswer('aq4',this,false)"><span class="opt-letter">D</span> Ein EU-Förderprogramm für Unternehmen mit hohen Energiekosten.</button>
        </div>
        <div class="quiz-fb" id="aq4-fb"></div>
        <button class="quiz-retry" id="aq4-retry" onclick="retryQuiz('aq4')">↩ Nochmal</button>
      </div>
    </div>

    <div class="nav-row">
      <button class="btn-prev" onclick="prevStep()">← Zurück</button>
      <button class="btn-next" onclick="nextStep()">Abschluss & Sicherung →</button>
    </div>
  </div>

  <!-- STEP 3: SICHERUNG -->
  <div class="step-content" data-step="3">
    <div class="section">
      <div class="section-hdr">
        <div class="section-num">4</div>
        <h2>Sicherung: Das hast du heute gelernt</h2>
      </div>
      <p style="font-size:14px;color:var(--text-secondary);margin-bottom:14px;">Mündliche Abfrage durch die Lehrkraft (10 Min.).</p>
      <div style="display:grid;grid-template-columns:1fr 1fr;gap:10px;">
        <div class="info-box violet"><strong>📚 Erklären können:</strong><br>Kreislaufwirkung von Lohnerhöhungen · Lohn-Preis-Spirale · Gewinn-Preis-Spirale · Nachfrage- vs. angebotsorientierte Sicht · Inflationsausgleichsprämie</div>
        <div class="info-box green"><strong>💬 Beurteilen können:</strong><br>Forderungen konkreter Tarifparteien einschätzen · Branchenspezifische Unterschiede erkennen · Kompromissmodelle bewerten (z.B. IAP)</div>
      </div>
    </div>

    <div class="abfrage-section" id="abfrage-232">
      <div class="section print-section" style="border:2px solid var(--orange);">
        <div style="display:flex;align-items:center;gap:10px;margin-bottom:16px;">
          <span style="font-size:22px;">🎓</span>
          <h2 style="color:var(--orange);">Mündliche Abfrage · 2.3.2 (10 Min.)</h2>
          <button class="print-btn" onclick="window.print()" style="margin-left:auto;">🖨️ Drucken</button>
        </div>
        <p style="font-size:13px;color:var(--text-secondary);margin-bottom:16px;">4K-Modell: Wissen · Kritisches Denken · Kommunikation · Kreativität</p>

        <div class="frage-card">
          <span class="fk-badge fk-wissen">💡 Wissen</span>
          <div class="frage-text">Erkläre die „Lohn-Preis-Spirale" und nenne zwei Argumente der Arbeitgeberverbände, warum starke Tarifabschlüsse riskant sein können.</div>
          <button class="erw-toggle" onclick="toggleErw(this)">▶ Erwartungshorizont</button>
          <div class="erw-content">
            <ul>
              <li>Lohn-Preis-Spirale: Löhne steigen → Unternehmen erhöhen Preise → Inflation → neue Lohnforderungen → Spirale</li>
              <li>Arbeitgeberargumente: Wettbewerbsfähigkeit sinkt; Gefahr von Produktionsverlagerung ins Ausland; Belastung kleiner Betriebe</li>
              <li>Zusatz: Planungsunsicherheit bei langen Tarifverträgen</li>
            </ul>
          </div>
        </div>

        <div class="frage-card">
          <span class="fk-badge fk-kritisch">🧠 Kritisches Denken</span>
          <div class="frage-text">Die Gewerkschaft sagt: „Es gibt keine Lohn-Preis-Spirale, sondern eine Gewinn-Preis-Spirale." Was meinen sie damit – und hast du ein eigenes begründetes Urteil?</div>
          <button class="erw-toggle" onclick="toggleErw(this)">▶ Erwartungshorizont</button>
          <div class="erw-content">
            <strong>Erklärung Gewinn-Preis-Spirale:</strong>
            <ul>
              <li>Nicht Lohnerhöhungen, sondern Unternehmen haben nach der Pandemie Preise über Kosten hinaus erhöht → Gewinne stiegen</li>
              <li>Fratzscher (DIW): stützt diese These empirisch; Hüther (IW): widerspricht</li>
            </ul>
            <strong>Eigenes Urteil (differenziert):</strong>
            <ul>
              <li>Wahrheit liegt branchenabhängig dazwischen</li>
              <li>Branchenbeispiel nennen (z.B. Energie, Lebensmittel vs. Gastronomie)</li>
              <li>Bewertungskriterium: eigenständige Position + nachvollziehbare Begründung</li>
            </ul>
          </div>
        </div>

        <div class="frage-card">
          <span class="fk-badge fk-komm">🗣 Kommunikation</span>
          <div class="frage-text">Fasse die Kreislaufanalyse aus eurer Partnerarbeit zusammen: Wie können höhere Löhne kein Schaden für die Wirtschaft sein?</div>
          <button class="erw-toggle" onclick="toggleErw(this)">▶ Erwartungshorizont</button>
          <div class="erw-content">
            <ul>
              <li>Vollständige Kette: Lohnerhöhung → mehr Kaufkraft → mehr Konsum → steigende Nachfrage → mehr Produktion → mehr Beschäftigung → höhere Steuereinnahmen</li>
              <li>Einschränkung nennen: Importanteil schmälert Inlandseffekt</li>
              <li>Verknüpfung mit M1 (Demonstranten) möglich</li>
              <li>Sprachlich: flüssig, Fachbegriffe korrekt</li>
            </ul>
          </div>
        </div>

        <div class="frage-card">
          <span class="fk-badge fk-kreativ">✨ Kreativität</span>
          <div class="frage-text">Denk dir ein Szenario aus: In welchem wirtschaftlichen Umfeld wäre ein starker Tarifabschluss (z.B. +10 %) unbedenklich – und in welchem wäre er riskant?</div>
          <button class="erw-toggle" onclick="toggleErw(this)">▶ Erwartungshorizont</button>
          <div class="erw-content">
            <strong>Unbedenklich bei:</strong>
            <ul>
              <li>Niedriger Inflation (Reallohngewinn ohne Preisspirale)</li>
              <li>Hohem Produktivitätswachstum und starker Konjunktur</li>
              <li>Fachkräftemangel (Löhne ziehen Arbeitskräfte an)</li>
              <li>Hohen Unternehmensgewinnen (Verteilungsspielraum)</li>
            </ul>
            <strong>Riskant bei:</strong>
            <ul>
              <li>Rezession / sinkender Nachfrage</li>
              <li>Hoher Inflation (Lohn-Preis-Spirale wahrscheinlicher)</li>
              <li>Vielen kleinen Betrieben mit geringer Marge</li>
              <li>Starkem internationalem Wettbewerb (Verlagerungsgefahr)</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="nav-row">
      <button class="btn-prev" onclick="prevStep()">← Zurück</button>
    </div>
  </div>

</div><!-- end main -->

<div id="modal-overlay" onclick="handleOverlayClick(event)">
  <div id="pin-modal">
    <h3>🎓 Lehrkraft-Login</h3>
    <p>Bitte 6-stelligen PIN eingeben</p>
    <div class="pin-dots">
      <div class="pin-dot" id="d0"></div><div class="pin-dot" id="d1"></div>
      <div class="pin-dot" id="d2"></div><div class="pin-dot" id="d3"></div>
      <div class="pin-dot" id="d4"></div><div class="pin-dot" id="d5"></div>
    </div>
    <div class="pin-pad">
      <button class="pin-key" onclick="pinInput('1')">1</button><button class="pin-key" onclick="pinInput('2')">2</button><button class="pin-key" onclick="pinInput('3')">3</button>
      <button class="pin-key" onclick="pinInput('4')">4</button><button class="pin-key" onclick="pinInput('5')">5</button><button class="pin-key" onclick="pinInput('6')">6</button>
      <button class="pin-key" onclick="pinInput('7')">7</button><button class="pin-key" onclick="pinInput('8')">8</button><button class="pin-key" onclick="pinInput('9')">9</button>
      <button class="pin-key del" onclick="pinDelete()">⌫</button>
      <button class="pin-key" onclick="pinInput('0')">0</button>
      <button class="pin-key del" onclick="closePinModal()" style="font-size:12px;color:var(--text-muted);">✕</button>
    </div>
    <div id="pin-error"></div>
  </div>
</div>

<script>
const TEACHER_PIN='123456';
const STEPS=[{label:'Einstieg'},{label:'Kreislauf'},{label:'Sichtweisen'},{label:'Abfrage',teacherOnly:true}];
let currentStep=0,isTeacher=false,pinBuf='';

const quizCorrect={aq1:'C',aq2:'A',aq3:'B',aq4:'C'};
const quizExp={
  aq1:{c:'Richtig! Die Gewerkschaften argumentieren: Nicht steigende Löhne, sondern überhöhte Unternehmensgewinne haben die Preise getrieben (Fratzscher/DIW).',w:'Das beschreibt die Lohn-Preis-Spirale (Arbeitgeberargument). Die Gewinn-Preis-Spirale ist das Gegenargument der Gewerkschaften.'},
  aq2:{c:'Richtig! Angebotsorientierte Sicht: Höhere Lohnkosten → Unternehmen stellen weniger ein oder verlagern Produktion.',w:'Das ist die nachfrageorientierte Sicht (Kaufkraftargument). Die angebotsorientierte Sicht fokussiert auf die Kostenseite der Unternehmen.'},
  aq3:{c:'Richtig! Höhere Löhne → mehr Einkommensteuer und Sozialversicherungsbeiträge → Staat hat mehr Einnahmen für öffentliche Ausgaben.',w:'Der Staat profitiert vor allem durch höhere Steuer- und Sozialversicherungseinnahmen infolge steigender Löhne.'},
  aq4:{c:'Richtig! Die Inflationsausgleichsprämie ist eine steuerfreie Einmalzahlung (bis 3.000 €) – Kaufkraftschutz für Arbeitnehmer, keine dauerhaften Lohnkostensteigerungen für Arbeitgeber.',w:'Die Inflationsausgleichsprämie ist eine steuerfreie Einmalzahlung – kein staatliches Programm und keine dauerhafte Lohnerhöhung.'}
};

// Kreislauf
const klAnswers={
  'kl-1':['konsum','kaufkraft','nachfrage','ausgaben'],
  'kl-2':['produktion','herstellung','output','güter'],
  'kl-3':['beschäftigung','arbeit','jobs','einstellung','erwerbstätigkeit']
};
const klLabels={'kl-1':'🛍 mehr Konsum','kl-2':'🏭 mehr Produktion','kl-3':'👷 mehr Beschäftigung'};

function checkKreislauf(){
  let ok=true;let wrong=[];
  ['kl-1','kl-2','kl-3'].forEach(id=>{
    const inp=document.getElementById(id);
    const val=inp.value.trim().toLowerCase();
    const box=inp.closest('.kl-gap-box');
    const match=klAnswers[id].some(a=>val.includes(a));
    box.classList.remove('correct','wrong');
    box.classList.add(match?'correct':'wrong');
    if(!match){ok=false;wrong.push(klLabels[id]);}
  });
  const fb=document.getElementById('kl-feedback');
  fb.style.display='block';
  if(ok){
    fb.style.cssText='display:block;background:var(--green-light);color:#1b5e20;border:1px solid #86efac;padding:10px 14px;border-radius:8px;font-size:13.5px;';
    fb.innerHTML='✅ <strong>Vollständig richtig!</strong> Kreislauf: Lohnerhöhung → mehr Konsum → höhere Nachfrage → mehr Produktion → mehr Beschäftigung → höhere Staatseinnahmen.';
  } else {
    fb.style.cssText='display:block;background:var(--red-light);color:#9f1239;border:1px solid #fca5a5;padding:10px 14px;border-radius:8px;font-size:13.5px;';
    fb.innerHTML='❌ Noch nicht ganz. Schau nochmal nach bei: <strong>'+wrong.join(', ')+'</strong>. Tipp: Denk an den Weg vom Lohn über Konsum zur Wirtschaftsleistung.';
  }
}
function resetKreislauf(){
  ['kl-1','kl-2','kl-3'].forEach(id=>{
    const inp=document.getElementById(id);inp.value='';
    inp.closest('.kl-gap-box').classList.remove('correct','wrong');
  });
  const fb=document.getElementById('kl-feedback');fb.style.display='none';fb.textContent='';
}

function renderProgress(){
  const bar=document.getElementById('progress-bar');bar.innerHTML='';
  STEPS.forEach((s,i)=>{
    if(s.teacherOnly&&!isTeacher)return;
    if(i>0){const c=document.createElement('div');c.className='step-conn'+(i<=currentStep?' done':'');bar.appendChild(c);}
    const dot=document.createElement('div');
    dot.className='step-dot'+(i===currentStep?' active':'')+(i<currentStep?' done':'')+(s.teacherOnly?' teacher-only':'');
    dot.onclick=()=>goToStep(i);
    dot.innerHTML=`<div class="step-circle">${i<currentStep?'✓':i+1}</div><div class="step-label">${s.label}</div>`;
    bar.appendChild(dot);
  });
}
function goToStep(n){
  document.querySelectorAll('.step-content').forEach(s=>s.classList.remove('active'));
  const t=document.querySelector(`[data-step="${n}"]`);
  if(t){t.classList.add('active');currentStep=n;renderProgress();}
  setTimeout(()=>{if(t)t.querySelectorAll('.section').forEach(s=>s.classList.add('visible'));},60);
  window.scrollTo({top:0,behavior:'smooth'});updateTeacher();
}
function nextStep(){goToStep(currentStep+1);}
function prevStep(){if(currentStep>0)goToStep(currentStep-1);}
function updateTeacher(){
  document.querySelectorAll('.teacher-box').forEach(b=>b.classList.toggle('visible',isTeacher));
  document.querySelectorAll('.abfrage-section').forEach(b=>b.classList.toggle('visible',isTeacher));
}
function openPinModal(){
  if(isTeacher){isTeacher=false;document.getElementById('teacher-btn').textContent='🎓 Lehrkraft';document.getElementById('teacher-btn').classList.remove('active');updateTeacher();renderProgress();return;}
  pinBuf='';updatePinDots();document.getElementById('pin-error').textContent='';document.getElementById('modal-overlay').classList.add('open');
}
function closePinModal(){document.getElementById('modal-overlay').classList.remove('open');pinBuf='';updatePinDots();}
function handleOverlayClick(e){if(e.target===document.getElementById('modal-overlay'))closePinModal();}
function pinInput(d){if(pinBuf.length>=6)return;pinBuf+=d;updatePinDots();if(pinBuf.length===6)setTimeout(checkPin,180);}
function pinDelete(){pinBuf=pinBuf.slice(0,-1);updatePinDots();}
function updatePinDots(){for(let i=0;i<6;i++)document.getElementById('d'+i).classList.toggle('filled',i<pinBuf.length);}
function checkPin(){
  if(pinBuf===TEACHER_PIN){closePinModal();isTeacher=true;document.getElementById('teacher-btn').textContent='🎓 Lehrkraft ✓';document.getElementById('teacher-btn').classList.add('active');updateTeacher();renderProgress();}
  else{document.getElementById('pin-error').textContent='Falscher PIN.';document.getElementById('pin-modal').classList.add('shake');setTimeout(()=>{document.getElementById('pin-modal').classList.remove('shake');pinBuf='';updatePinDots();},450);}
}
document.addEventListener('keydown',e=>{
  if(!document.getElementById('modal-overlay').classList.contains('open'))return;
  if(e.key>='0'&&e.key<='9')pinInput(e.key);
  if(e.key==='Backspace')pinDelete();
  if(e.key==='Escape')closePinModal();
});
function pollAnswer(gid,btn,ok,exp){
  const g=document.getElementById(gid);if(g.dataset.answered)return;g.dataset.answered='1';
  g.querySelectorAll('.poll-opt').forEach(o=>{o.disabled=true;o.style.cursor='default';});
  btn.classList.add(ok?'sel-correct':'sel-wrong');
  if(!ok)g.querySelectorAll('.poll-opt').forEach(o=>{if(o.getAttribute('onclick')&&o.getAttribute('onclick').includes(',true,'))o.classList.add('show-correct');});
  const fb=document.getElementById(gid+'-fb');fb.textContent=(ok?'✅ ':'❌ ')+exp;fb.className='poll-fb show '+(ok?'correct':'wrong');
  if(!ok){const r=document.getElementById(gid+'-retry');if(r)r.style.display='inline-flex';}
}
function retryPoll(gid){
  const g=document.getElementById(gid);delete g.dataset.answered;
  g.querySelectorAll('.poll-opt').forEach(o=>{o.disabled=false;o.style.cursor='pointer';o.classList.remove('sel-correct','sel-wrong','show-correct');});
  const fb=document.getElementById(gid+'-fb');fb.className='poll-fb';fb.textContent='';
  const r=document.getElementById(gid+'-retry');if(r)r.style.display='none';
}
function quizAnswer(qid,btn,ok){
  const g=document.getElementById(qid);if(g.dataset.answered)return;g.dataset.answered='1';
  const opts=g.querySelectorAll('.quiz-opt');opts.forEach(o=>{o.disabled=true;o.style.cursor='default';});
  const letters=['A','B','C','D'];
  opts.forEach((o,i)=>{if(letters[i]===quizCorrect[qid])o.classList.add(ok?'correct':'show-correct');});
  if(!ok)btn.classList.add('wrong');
  const fb=document.getElementById(qid+'-fb');fb.textContent=(ok?'✅ ':'❌ ')+(ok?quizExp[qid].c:quizExp[qid].w);fb.className='quiz-fb show '+(ok?'correct':'wrong');
  if(!ok)document.getElementById(qid+'-retry').classList.add('show');
}
function retryQuiz(qid){
  const g=document.getElementById(qid);delete g.dataset.answered;
  g.querySelectorAll('.quiz-opt').forEach(o=>{o.disabled=false;o.style.cursor='pointer';o.classList.remove('correct','wrong','show-correct');});
  document.getElementById(qid+'-fb').className='quiz-fb';document.getElementById(qid+'-retry').classList.remove('show');
}
function toggleSolution(id){
  const el=document.getElementById(id);const btn=el.previousElementSibling;
  el.classList.toggle('visible');btn.textContent=el.classList.contains('visible')?'📋 Musterlösung schließen':'📋 Musterlösung';
}
function toggleErw(btn){
  const c=btn.nextElementSibling;c.classList.toggle('open');btn.textContent=c.classList.contains('open')?'▼ Erwartungshorizont':'▶ Erwartungshorizont';
}
document.addEventListener('DOMContentLoaded',()=>{
  renderProgress();
  setTimeout(()=>{document.querySelectorAll('[data-step="0"] .section').forEach(s=>s.classList.add('visible'));},80);
});
</script>
</body>
</html>
