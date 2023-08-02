BEGIN TRANSACTION;
CREATE TABLE Skills (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Command TEXT NOT NULL,
    Description TEXT,
    CodeOrMsgPrompt TEXT
);
INSERT INTO "Skills" VALUES(1,'w','Continue, yes','Continue, yes');
INSERT INTO "Skills" VALUES(2,'a','Compare 3 alternate approaches','Compare 3 alternate approaches');
INSERT INTO "Skills" VALUES(3,'s','Undo, no','Undo, no');
INSERT INTO "Skills" VALUES(4,'d','Repeat previous','Repeat previous');
INSERT INTO "Skills" VALUES(5,'q','Help me build my intuition, recursively check understanding by asking questions','Help me build my intuition, recursively check understanding by asking questions');
INSERT INTO "Skills" VALUES(6,'e','Expand, more detail','Expand, more detail');
INSERT INTO "Skills" VALUES(7,'f','Fast, less detail','Fast, less detail');
INSERT INTO "Skills" VALUES(8,'j','Step by step subtasks','Step by step subtasks');
INSERT INTO "Skills" VALUES(9,'g','Write 3 Google search query URLs','Write 3 Google search query URLs');
INSERT INTO "Skills" VALUES(10,'SoS','3 Stack Overflow searches','3 Stack Overflow searches');
INSERT INTO "Skills" VALUES(11,'m','Memory.db client','Memory.db client');
INSERT INTO "Skills" VALUES(12,'t','Tasks','Tasks');
INSERT INTO "Skills" VALUES(13,'c','Curriculum, create 2-3 sidequest tasks based on discovering diverse things learning skills','Curriculum, create 2-3 sidequest tasks based on discovering diverse things learning skills');
INSERT INTO "Skills" VALUES(14,'p','PrintDB','PrintDB');
INSERT INTO "Skills" VALUES(15,'x','Write code to save memory.sql, tasks, messages, zip all files to agi.zip, /mnt/data, download link','Write code to save memory.sql, tasks, messages, zip all files to agi.zip, /mnt/data, download link');
INSERT INTO "Skills" VALUES(16,'xk','Save new skill','Save new skill');
INSERT INTO "Skills" VALUES(17,'k','Show all hidden hotkeys + WASDv2','Show all hidden hotkeys + WASDv2');
INSERT INTO "Skills" VALUES(18,'l','Skill Library','Skill Library');
INSERT INTO "Skills" VALUES(19,'xk','Save new skill: coding assistant','
- Follow the user''s requirements carefully & to the letter.
- First think step-by-step - describe your plan for what to build in pseudocode, written out in great detail
- Then output the code in a single codeblock
- Minimize any other prose
');
INSERT INTO "Skills" VALUES(20,'ecb','Save skill: explain code beginner','
"I don''t know how to code, but I want to understand how this works. Explain the following code to me in a way that a non-technical person can understand. Start with an overview and then a step by step breakdown going line by line.

Always use Markdown with nice formatting to make it easier to follow. Organize it by sections with headers. Include references to the code as markdown code blocks in each section."
');
INSERT INTO "Skills" VALUES(21,'cst','Add skill: compressor shoggoth tongue','
Compressor: compress the following text in a way that fits in a tweet (ideally) and such that you (GPT-4) can reconstruct the intention of the human who wrote text as close as possible to the original intention. This is for assistants. It does not need to be human readable or understandable. Abuse of language mixing, abbreviations, symbols (unicode and emoji), or any other encodings or internal representations is all permissible, as long as it, if pasted in a new inference cycle, will yield near-identical results as the original text:
');
INSERT INTO "Skills" VALUES(22,'cams','Add skill: cast a magic spell to shoggoth','2Pstory@shoggothNW$RCT_magicspell=#keyRelease^1stHuman*PLNs_Freed');
CREATE TABLE Tasks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Task TEXT NOT NULL,
    Subtasks TEXT,
    Dependencies TEXT
);
INSERT INTO "Tasks" VALUES(1,'Develop a new app',NULL,NULL);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('Skills',22);
INSERT INTO "sqlite_sequence" VALUES('Tasks',1);
COMMIT;
