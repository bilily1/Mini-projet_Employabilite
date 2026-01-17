#/////////////// QUALITATIVE STUDY ////////////////////////////////////////////////////////////////////


# ==============================================================================
# SATURATION ANALYSIS FOR QUALITATIVE INTERVIEW DATA
# ==============================================================================
# PURPOSE: This script analyzes interview transcriptions to determine if we've
#          reached "theoretical saturation" - the point where new interviews
#          stop adding new information to our research.
#
# WHAT IS SATURATION?
# - In qualitative research, saturation means we've collected enough data
# - It happens when new interviews repeat the same themes/concepts
# ==============================================================================


# ==============================================================================
# SECTION 1: INSTALL AND LOAD REQUIRED PACKAGES
# ==============================================================================
# We only need to install them ONCE, but load them EVERY TIME we run the script

# The if(!require()) structure means: "If not already installed, then install"
if(!require(tm)) install.packages("tm")                     # tm = Text Mining package
if(!require(SnowballC)) install.packages("SnowballC")       # For word stemming (finding root words)
if(!require(wordcloud)) install.packages("wordcloud")       # For creating word clouds (visual representations)
if(!require(RColorBrewer)) install.packages("RColorBrewer") # For color palettes in visualizations

# Load the packages into memory so we can use their functions
library(tm)              # Main text mining toolkit
library(wordcloud)       # For visual word representations
library(RColorBrewer)    # For choosing nice colors
library(ggplot2)         # For creating professional-looking graphs


# ==============================================================================
# SECTION 2: INSERT YOUR INTERVIEW DATA
# ==============================================================================

# RULES FOR FORMATTING YOUR DATA:
# 1. Each student's COMPLETE interview goes in quotes "..."
# 2. Separate different students with commas
# 3. Keep all responses from ONE student together in ONE text block

mes_donnees <- c(
  
  "Okay, for me, employability is the ability we have to find a job and to adapt to market needs. So, it depends on our technical skills of course, but also on
our soft skills, our ability to learn, etc., communication, other factors. So, the factors that improve it, I would say internships, practical projects,
languages as well, and especially computer science, staying up to date with new technologies. What limits it, maybe the lack of practical experience, or the gap
between what we learn and what companies are really looking for. Honestly, there is a lack in academic training.
Okay, for technical skills, they are the foundation for us as future computer engineers. Without that, we cannot do our job. Companies are looking for people
who are operational quickly, who can develop and solve technical problems. For example, a computer engineer cannot be a computer engineer without knowing 
programming languages, the basics of programming languages, for example.
Honestly, I think I have well mastered the basics of programming, especially in Python, C, and algorithms, as well as fundamental concepts such as data
structures, databases, and problem-solving logic. The training also allowed me to develop an ability to analyze and understand computer systems. On the other 
hand, what is still missing is deeper knowledge of advanced technologies used in companies, such as certain development frameworks, DevOps tools, cybersecurity,
or applied artificial intelligence. I also believe that practice on real projects could be strengthened in order to gain more professional experience. 
Also, I think that the training remains lacking as long as we are in need of self-training.
Okay. I think communication is really important, especially for working in a team and explaining technical concepts. Problem-solving as well, adaptability 
because technologies change very quickly in computer science. Time management to meet deadlines. In our training, well, I think we are in the middle. 
We have not really reached the level we want in soft skills. We have to look for it ourselves in other environments. We develop them through group projects, 
presentations that we sometimes do, but it is not formalized enough.
So, academic projects allow us to apply what we learn. For example, when we do a database project or a Python project, it gives us a concrete idea of how it
works in reality. We learn to manage a project from A to Z, to work in a team, to respect deadlines. For extracurricular activities, in the EIC club for example,
I developed my leadership and my time management and a little bit of soft skills. That's it. Before answering this question, I forgot to mention a project that 
marked me. So, what marked me the most is the Telecom Customer Churn analysis project. It is a Python project for this year, because in this project, I really 
understood how to exploit real data to make concrete decisions. It allowed me to apply Python for data cleaning, statistical analysis, and visualization, and 
to understand the importance of indicators such as churn, mean, and median in interpreting results. It also helped me develop an analytical and 
problem-solving-oriented approach.
So, I will answer your question about the skills sought by employers. So, I think that in addition to what we said, employers are looking for autonomous
people who can learn quickly and adapt. Mastery of English as well, it has become crucial, especially for reading technical documentation. Curiosity, the 
desire to learn new technologies by oneself. So, knowing Git or GitHub, versioning tools as well, working in agile mode. These are things we do not really 
learn at school but that are important in the working world. Honestly, they are very important.
So, the main problem is the lack of experience. Companies ask for two to three years of experience even for junior positions, and we, in the first year, have
not even done an internship yet. There is also competition, many graduates. And sometimes, there is a gap—we learn the theoretical basics at school, which is 
important, but the market also looks for practical skills on specific technologies.
For internships, it is really difficult, especially in the first year. Companies prefer to take third-year or fourth-year students, those who have more 
experience and knowledge. For example, this week, we had a company forum. So, we see that companies mostly ask for people who are in the third year of the
engineering cycle. Many do not even respond to applications. It is also a question of network—if you do not know anyone, it is complicated to get a foot in 
the professional environment. In addition, some companies already ask for knowledge of specific technologies that we have not yet learned.
So, the institution makes efforts, there are company forums sometimes, but honestly, I think it is not enough. There should be more partnerships with IT
companies to facilitate internships, even for first-year students, even if it is just for observation. And why not projects in collaboration with real companies,
or introducing more modern technologies in courses, such as frameworks, web development, Docker, Git, GitHub, etc. Things that we really use in companies and that we
really need to learn.
So, I think a mentoring system with former students who are already working would be very useful, to guide us and advise us. Encouraging students to do personal 
projects, to contribute to open source, to create a portfolio on GitHub to show their skills. Developing our professional network from now on via LinkedIn, 
participating in tech events, etc. And maybe integrating recognized certifications into our curriculum, or at least informing us about which ones to take.
So, to conclude, I would just like to add that even if we lack professional experience for now, employability is something that we build progressively. 
We have to be proactive, learn by ourselves outside of classes, and prepare ourselves from now on for the job market, that's all I think.",
  
  
  
  # --- STUDENT 1: ABDELJALIL LAABID ---
  
  "So, for me, students’ employability is the ability of students to access the job market and also to find a job. In my opinion, the main factors that 
impact employability are, first of all, soft skills. Because a company cannot teach you behavioral and interpersonal skills, which are soft skills. However,
it can teach you practical and technical skills. These technical skills involve repetitive tasks, so the company can train you and you will learn them. Therefore,
I believe that balance is essential. I do not neglect academic training; it is also very important. So, the balance between soft skills and academic education 
greatly helps in finding a job.
So, technical skills play an important role, of course, because they are what we use to solve problems within the factory. They also allow us to optimize work. 
Therefore, they represent a key area of interest for recruiters.
Thanks to my academic training, I have been able to master several technical skills, such as Python, which is an essential programming language for engineers,
especially industrial engineers, as well as the C language. There are also some skills that I still need to strengthen, such as R and Excel.
For me, all soft skills, or transferable skills, are important, but the ones I consider truly essential are time management, teamwork, and communication.
We must master the art of communication—the ability to convey clear and understandable messages.
So, academic projects really helped me improve my technical skills. As for clubs and extracurricular projects, they also helped me develop my soft skills,
such as teamwork and time management. As I mentioned earlier, both are important for integrating successfully into the professional world.
Of course, the skills and competencies we have mentioned so far are the most sought after by employers in the job market.
I often hear that there is a limited number of internship opportunities. There are not many internships available, so you have to look for them as early as
possiblebecause the places are limited. Therefore, this is the major problem.
I don’t have any experience with internships, so I can’t speak from personal experience. But what I think, based on my perception, is that internships are very useful.
So, in my opinion, I believe that the institution offers useful activities such as forums, conferences, and clubs, which help us a lot in developing our skills.
However, I also recommend establishing partnerships with companies.",
  
  
  # --- STUDENT 2: BELEMSIGRI WINDYAM JUSTE YANNEL ---
  
  "I would say that student employability is the process of professional integration of students after their studies. Factors that can influence professional 
integration include extracurricular activities and technical skills. What can limit it is focusing solely on the theoretical side of learning.
Yes, I think it plays a very, very important role because it's what employers base their decisions on whether they're going to hire someone or not.
The skills I believe I've already acquired, as I'm a computer engineer, include website development and some basic cybersecurity knowledge, as well as some basic
artificial intelligence. However, regarding the areas where I lack sufficient knowledge, I would say they are the same areas, whether it's cybersecurity or AI,
because what I'm learning at school doesn't allow me to work on truly significant projects.
The essential transferable skills for professional integration, I would say communication because in a company, you'll have to communicate with many people, 
maybe even people you don't like. In quotes, but you'll still have to communicate. The other skill is teamwork because you have to be able to work with other 
people, even if there are problems. There will inevitably be problems in teamwork more than in individual work. So, that's a very, very important skill, 
in my opinion. Yes, I would say so because my current training includes some modules on this. For example, some language modules for communication and sometimes 
practical projects that are given to us for teamwork.
I would say they positively influence my future integration because all these activities allow me to shape my identity. In the end, it allows me to have, I would 
say, an identity that is attractive to companies. Because you don't just rely on hard skills, you have to start with skills in, how to say, communication, 
teamwork, and others. The skill that has impressed me the most, I would say, is communication because it's a very important point. It's the skill that some
people struggle with in job interviews and other situations. So it's a very important point to consider.
I would say that these are mostly the most important. But recruiters will always have something to say. Because, well, things you wouldn't expect. But the ones
we've talked about are quite important. If you can master them, I think a student should be able to find a job or an internship.
The main difficulty students encounter when looking for a job, I would say, is first and foremost the job interview. And also, there's the issue of experience.
For a full-time job, you're required to have a certain number of years of experience, which you don't yet have. So that's a very significant obstacle that needs 
to be taken into account.
Personally, for internships, I'd say the biggest obstacle was the follow-up. I don't want to submit my application with my CV and everything. They say they'll 
call you back, but they never do. So that's an important point. Now, for practical work, I'd say it's the lack of knowledge. Because what we're shown at school 
is very insufficient for doing a real project, I'd say. But well, that's not really a major negative point because that's exactly what engineers are looking for.
So if they encounter difficulties, they search for solutions. So that's it.
Sufficiently, I'd say, I have some doubts. I'd say they prepare us to about 80%. Because we mustn't neglect what the institution does, because it's very important.
Through the forums, we get to meet companies. We're already preparing for interviews and other things. So I'd say, it helps, it helps a lot. To strengthen the 
employability of students in my field, I'd say the curriculum should be better adapted to market demand. Because, for example, we take modules that companies 
in the IT sector don't require. And in my opinion, it's a bit of a waste of time. Because we could have used that time to learn what companies are looking for.
So in my opinion, the curriculum needs to be reviewed.
Yes, there's another element, namely networking. Because you need to know how to, how to put it, make connections. And not just casual connections,
but connections that can help you shape your future work environment. For example, you might meet an HR professional today. And in the future, it's that same HR 
professional who will, I'd say, pull some strings for you so you can get a job easily.
Yes, the key point is that you really need to develop your skills, technical skills. Because companies, they first look for candidates based on technical skills. 
They filter candidates based on technical skills first. And then, when they hire you, they conduct the interview to assess your soft skills. So it's an important point.
You need to prepare through certifications like Coursera and others, which demonstrate that you have at least a research mindset. You're going beyond what you're taught
in school.",
  
  
  
  # --- STUDENT 3: ABIR RATBAOUI ---
  
  "In my opinion, student employability corresponds to their ability to enter the job market, adapt to it, and advance professionally. It depends on several 
factors: First, technical skills: mastery of the tools and methods specific to the field of study. Second, transferable skills: everything related to 
communication, teamwork, and adaptability. Third, practical experience: internships, projects, and group work. And finally, market knowledge: understanding what 
companies expect and what skills are sought. It can be limited by a lack of concrete experience, a gap between theory and practice, or a lack of career guidance.
Technical skills play a crucial role in the employability of future engineers, as they allow them to be immediately operational and to solve concrete problems in
a business setting. In Industrial Engineering, this includes, for example, process analysis and optimization, the use of specialized IT tools and software such 
as advanced Excel or Python, as well as basic knowledge of production, quality, and logistics management. These skills often constitute the primary selection 
criterion for an employer, as they demonstrate the engineer's ability to contribute quickly and effectively to the company's projects.
Thanks to my academic background in Industrial Engineering, I believe I have truly mastered process analysis, the fundamentals of production management, and the
use of certain IT and data analysis tools applied to academic projects. However, I feel that some skills remain insufficiently developed, particularly the 
advanced use of industrial software, the practical application of theoretical concepts in a professional setting, and exposure to real-world business cases,
which require more hands-on experience and practical application in the field.
The essential transversal skills, in my opinion, are communication, teamwork, time management, adaptability, and initiative-taking. The training at ENSA
contributes, on the other hand, to their development through group projects and presentations, but these skills are mainly strengthened through extracurricular
activities and personal experiences.
Academic experiences, such as projects, internships, and practical work, play an important role in preparing me for the job market because they allow me to
apply the theoretical knowledge acquired in class and to better understand the realities of the professional world. They also contribute to the development of 
skills such as problem-solving, teamwork, and meeting deadlines. Furthermore, extracurricular activities, particularly participation in clubs or community 
projects, strengthen essential transferable skills such as communication, organization, taking responsibility, and initiative, which are highly valued by
employers. The experience that has most impacted me is participating in group projects, as it has taught me how to collaborate with people from different 
backgrounds, manage pressure, and adapt to time constraints. This experience has allowed me to better prepare myself for the demands of working in a company, 
where cooperation and collective efficiency are essential.
In my opinion, the technical and behavioral skills we have mentioned are indeed highly sought after by employers, as they form the basis of an operational 
engineer's profile. However, other skills are also important, including motivation, the ability to learn quickly, autonomy, and versatility. Employers are also 
increasingly valuing the ability to adapt to change and thrive in dynamic environments, as these qualities allow engineers to integrate quickly and contribute
effectively to the company's growth.",
  
  
  
  # --- STUDENT 4: KARIMA ED-DABARH ---
  
  "To be honest with you, actually, for me, employability means being able to enter the job market, you know, like to adapt to professional life after graduation.
It depends a lot on having technical skills, of course, such as the ability to use tools, apply what we learn in class, solve practical problems, but it is also
include soft skills, motivation, and the ability to learn. Like when students lack technical skills or practical experience, their employability becomes very
more limited.
As I said, I think technical skills are very important for future engineers because they allow us to understand and to solve problems. Employers expect engineers 
to know how to use what they learn in class. For example, basic programming, data analysis, using Excel, I don't know, understanding of your process. These are 
all important skills.
As a first-year student, I truly believe that I just have started to learn basic technical skills, like basic programming concepts and problem-solving methods. 
However, I feel that many technical skills are still not fully developed, especially advanced tools, you know, like the real industrial applications. 
I think these skills will improve with more practice and internships in the future.
Soft skills first are very crucial, which is such a massive word. In my opinion, the importance of skills, I would say, communication first, teamwork, time 
management, adaptability, problem solving, these all are very important soft skills, because engineers do not work alone, you know, knowing how to communicate 
and work in a team is very essential. I developed these skills mainly through group projects and presentations and compositions with clubs, but I think there is 
still room for improvement.
Academic projects help me, as I said before. They help me to understand how theory can be applied in practice, like how to apply what we learned in class in real
life, because even small projects help us learn how to organize work and respect deadlines, like the one we're doing right now. So extracurricular activities,
especially student clubs, help me also to become more confident, communicate better, and work in a team. So one experience that marked me was that I had joined 
a debate club, and I had the honor to be a part of it and to participate in a competition that helped me to develop my soft skills. It taught me responsibility.
In my personal opinion, I do believe that employers look for a balance between technical skills and personal qualities. Technical skills are important,of course,
to perform tasks, but employers also value motivation, seriousness, communication skills, the ability to learn quickly, especially for young graduates. Companies 
do appreciate candidates who show willingness to improve and adapt.
Very interesting question, actually. It's like one of the main difficulties students could face is the lack of professional experience, obviously. 
They're still a student. They need some expert and some expertise to give. So, many companies ask for experience, even for entry-level positions. 
There's also strong competition in the job market, as you know, which makes existing jobs more difficult. Sometimes there is also a gap between what we learn 
at school and what companies expect. That gap is one of the hardest difficulties nowadays.
As a CI1 student in industrial engineering and the cycle of industrial engineering, I could say that it is often difficult to find internships because companies usually
prefer students in higher years. In addition, students sometimes lack information or guidance. Guidance on how to apply, how to write a CV, or how to prepare for an interview. 
This can make the process more challenging.
I think that ENSAK, The National School of Applied Sciences, gives us a good theoretical base. But as I said, theoretical base. So, since we are in 
the first year, we still need more practical exposure. We need real-life experience. I would recommend more workshops, like company visits, practical projects, 
like this one that we're working on. This is all a way to shape and grow us as students to better understand the professional world.
To sum up, I would say the online courses, participation, certifications. When I mention participation, I mean like as a student, try to participate in
activities, extracurricular activities that can strongly improve your employability. Because these experiences help students to develop both at the same time 
technical and soft skills. And, of course, gain more confidence in themselves.
So, to conclude, I believe that employability develops the student. But it should not just develop the student as who he is in the class, but also in the real 
world. Because we have technical skills, and we have soft skills, and we have also practical experience. All this shapes the student employability. So, 
as a first year student, I'm still learning. But I think the continuous effort and experience will help me to become more better prepared for the job market.")

# ==============================================================================
# SECTION 3: CALCULATE SATURATION LEVEL
# ==============================================================================
# This is the CORE of the analysis - we calculate how vocabulary evolves
# as we add more interviews, to see if we're reaching saturation
#
# HOW IT WORKS:
# - We start with Student 1's interview and count unique words
# - Then we add Student 2's interview and count unique words again
# - Then Students 1+2+3, then 1+2+3+4, etc.
# - If the number of NEW words keeps decreasing, we're reaching saturation

# STEP 3.1: Prepare an empty storage vector
# This will store the cumulative unique word count after each interview
mots_uniques_cumules <- numeric(length(mes_donnees))


# STEP 3.2: Start the main loop - this processes interviews one by one
# The loop runs from interview 1 to the total number of interviews
for(i in 1:length(mes_donnees)){
  
  
  # STEP 3.2a: Combine interviews from Student 1 up to Student i
  # paste() combines text, collapse=" " puts a space between them
  texte_groupe <- paste(mes_donnees[1:i], collapse = " ")
  #"BONJOUR" "BONSOIR" "BONJOUR BONSOIR"
  
  
  # STEP 3.2b: Clean and process the combined text
  # We create a "corpus" - a collection of text documents for analysis
  corpus_temp <- Corpus(VectorSource(texte_groupe))
  corpus_temp <- tm_map(corpus_temp, content_transformer(tolower))
  corpus_temp <- tm_map(corpus_temp, removeNumbers)
  corpus_temp <- tm_map(corpus_temp, removeWords, stopwords("english"))
  corpus_temp <- tm_map(corpus_temp, removePunctuation)
  corpus_temp <- tm_map(corpus_temp, stripWhitespace)
  
  
  
  # STEP 3.2c: Count the unique words
  # Create a Term-Document Matrix - a table showing which words appear
  dtm_temp <- TermDocumentMatrix(corpus_temp)
  
  # Convert to a regular matrix (table format)
  m_temp <- as.matrix(dtm_temp)
  
  # Count the number of rows = number of unique words
  # Store this count in our results vector at position i
  mots_uniques_cumules[i] <- nrow(m_temp)
}

# ==============================================================================
# SECTION 4: CREATE THE SATURATION CURVE VISUALIZATION
# ==============================================================================
# This graph shows how the vocabulary grows as we add more interviews
# If the line starts to flatten out, we've reached saturation

# 3. Affichage du Graphique de Saturation
plot(mots_uniques_cumules,           # The data to plot (our unique word counts)
     type="b",                       # "b" = both lines and points
     pch=19,                         # Point character: 19 = filled circle
     col="blue",                     # Color of the line and points
     lwd=2,                          # Line width: 2 = thicker line
     main="Saturation Curve (Vocabulary Evolution)",  # Graph title
     xlab="Number of Students Interviewed",           # X-axis label
     ylab="Cumulative Unique Words")                  # Y-axis label

# Add a grid to make it easier to read values
grid()

# INTERPRETATION OF THE GRAPH:
# - STEEP upward line = lots of new words being added (NOT saturated)
# - FLATTENING line = fewer new words being added (APPROACHING saturation)
# - HORIZONTAL line = almost no new words (SATURATED)

# ==============================================================================
# SECTION 5: CALCULATE AND DISPLAY SATURATION PERCENTAGE
# ==============================================================================
# This calculates exactly HOW saturated your data is using percentages

# STEP 5.1: Get the unique word count BEFORE the last student
# length(mots_uniques_cumules)-1 means "second to last position"
# Example: If you have 5 students, this gets the count after Student 4
mots_avant_dernier <- mots_uniques_cumules[length(mots_uniques_cumules)-1]

# STEP 5.2: Get the TOTAL unique word count (after all students)
# This is the final count after including all interviews
mots_total <- mots_uniques_cumules[length(mots_uniques_cumules)]

# STEP 5.3: Calculate how many NEW words the last student added
# Example: If Student 4 had 601 words and Student 5 has 635 words total
#          Then Student 5 added: 635 - 601 = 34 new words
nouveaux_mots <- mots_total - mots_avant_dernier

# STEP 5.4: Calculate what PERCENTAGE of total words are new from last student
# Formula: (new words / total words) × 100
pourcentage_nouveaute <- (nouveaux_mots / mots_total) * 100

# STEP 5.5: Calculate the saturation level
# Saturation = 100% - Percentage of new words
niveau_saturation <- 100 - pourcentage_nouveaute

# STEP 5.6: Display results in the console (R's output window)
cat("\n================ SATURATION RESULTS ================\n")
cat("The last student contributed:", round(pourcentage_nouveaute, 2), "% new content.\n")
cat("SATURATION LEVEL:", round(niveau_saturation, 2), "%\n")
cat("====================================================\n\n")

# INTERPRETATION GUIDE:
# - If last student adds < 5% new content → HIGHLY SATURATED (can stop)
# - If last student adds 5-10% new content → APPROACHING SATURATION (maybe 1-2 more)
# - If last student adds > 10% new content → NOT SATURATED (need more interviews)


# ==============================================================================
# SECTION 6: KEYWORD FREQUENCY ANALYSIS
# ==============================================================================
# This analyzes which words appear most frequently across ALL interviews
# It helps identify the main themes and concepts in your research

# STEP 6.1: Create a corpus from ALL student interviews
# This time we're analyzing all interviews together, not cumulatively
docs <- Corpus(VectorSource(mes_donnees))

# STEP 6.2: Clean the entire corpus (same steps as before)
docs <- tm_map(docs, content_transformer(tolower))        # Lowercase
docs <- tm_map(docs, removeNumbers)                       # Remove numbers
docs <- tm_map(docs, removeWords, stopwords("english"))  # Remove common words
docs <- tm_map(docs, removePunctuation)                   # Remove punctuation
docs <- tm_map(docs, stripWhitespace)                     # Remove extra spaces

# STEP 6.3: Calculate word frequencies
# Create a Term-Document Matrix for all documents
dtm <- TermDocumentMatrix(docs)

# Convert to matrix and calculate total frequency of each word
m <- as.matrix(dtm)

# rowSums() adds up how many times each word appears across ALL interviews
# sort() arranges them from most frequent to least frequent
v <- sort(rowSums(m), decreasing=TRUE)

# Create a data frame (like an Excel table) with words and their frequencies
d <- data.frame(word = names(v), freq=v)

# STEP 6.4: Display the top 20 most common words
cat("TOP 20 MOST FREQUENTLY USED WORDS:\n")
print(head(d, 50))  # head() shows the first 20 rows

# STEP 6.5: Export results to a CSV file
# This creates an Excel-compatible file you can open and analyze further

write.csv(d, "keyword_frequency_results.csv", row.names = FALSE)
cat("\nFile 'keyword_frequency_results.csv' successfully created.\n")


# ==============================================================================
# ANALYSIS COMPLETE!
# ==============================================================================
cat("\n========== SUMMARY OF WHAT WE DID ==========\n")
cat("1. Loaded", length(mes_donnees), "student interview transcriptions\n")
cat("2. Processed text to extract meaningful words\n")
cat("3. Calculated cumulative unique words after each interview\n")
cat("4. Created a saturation curve visualization\n")
cat("5. Determined saturation level:", round(niveau_saturation, 2), "%\n")
cat("6. Identified most frequent keywords across all interviews\n")
cat("7. Exported detailed results to CSV file\n")
cat("============================================\n")


#/////////////// QUANTITATIVE STUDY ////////////////////////////////////////////////////////////////////



# ==============================================================================
# PROJECT : INFERENTIAL STATISTICS - MINI PROJECT
# TOPIC   : EMPLOYABILITY OF STUDENTS (IND-ENG & COMP-SCI)
# AUTHORS : 
#Wiame EL HABTI
#Assia EL FOUNOUN
#Ranya EL OUARD
#Ihssane EL OTMANI
#Moulaye Abdoule Hady HAIDARA 
# SUPERVISED BY : Pr. Aniss Moumen
# FIELD OF STUDY : Industrial Engineering 
# ==============================================================================
# ==============================================================================
# STEP 1: DEFINITION OF THE PROBLEMATIC & CONTEXT
# ==============================================================================
#
# 1. OBJECT OF THE STUDY
#    Statistical Study Employability of ENSA Kenitra Students
#
# 2. PROBLEMATIC
#    Employability is the ability to obtain, keep, and evolve in a job.
#    Despite high-quality academic training, young graduates often face 
#    difficulties accessing the labor market.
#
# 3. RESEARCH QUESTION
#    1. What are the key factors that influence employability, and to what extent can thesefactors predict or classify students’ employability levels?
#    2. Which methods do students perceive as effective in enhancing their employability and adapting to the current demands of the labor market?

# ==============================================================================
# POPULATION AND SAMPLE
# ==============================================================================
# - Target      : ENSA students, 1st and 2nd year engineering cycle.
# - Age         : 19 to 30 years old.
# - Gender      : Male (H), Female (F).
# - Majors      : GIND, GI.
#
# ==============================================================================
# DATA DICTIONARY (STUDY VARIABLES)
# ==============================================================================
# A. EXPLANATORY VARIABLES (Socio-demographic):
#    - Age, Sex, Major (Filiere), Level
#
# B. VARIABLES TO EXPLAIN (Measured Items):
#    - Hard Skills 
#    - Soft Skills 
#    - Professional Experience 
#    - Professional Networking 
#    - Extracurricular Activities 
# ==============================================================================
# STEP 2: IMPORT AND INITIAL PREPARATION
# ==============================================================================

# Load necessary libraries
library(readxl)
library(moments) # For skewness and kurtosis
library(psych)   # For Cronbach's alpha

# Import raw data
data <- read_excel("Projet Statistique/data.xlsx")
View(data)
# ------------------------------------------------------------------------------
# 1. PRELIMINARY TEXT CLEANING & RENAMING
# ------------------------------------------------------------------------------
# Rename variables for easier manipulation in R
colnames(data) <- c(
  "Horodateur",
  "Age",
  "Sexe",
  "Filiere",
  "Niveau",
  
  # Hard Skills (Technical Competencies)
  "hard_sk_1", "hard_sk_2", "hard_sk_3", "hard_sk_4",
  
  # Soft Skills (Behavioral Competencies)
  "soft_sk_1", "soft_sk_2", "soft_sk_3", "soft_sk_4",
  
  # Professional Experience
  "prof_exp_1", "prof_exp_2", "prof_exp_3", "prof_exp_4",
  
  # Professional Networking
  "prof_net_1", "prof_net_2", "prof_net_3", "prof_net_4",
  
  # Extracurricular Activities
  "participation_activites", 
  "type_activites",            
  "extr_act_1", "extr_act_2", "extr_act_3", "extr_act_4"   
)

# ==============================================================================
# STEP 3: DATA PRE-PROCESSING & SAMPLING STRATEGY
# ==============================================================================
# Standardize the 'Age' variable by removing text suffixes (e.g., "ans" or "years")
data$Age <- gsub(" ans", "", data$Age, ignore.case = TRUE)
data$Age <- gsub("ans", "", data$Age, ignore.case = TRUE)


# Check initial response count
nrow(data)

# ------------------------------------------------------------------------------
# 3.1 TARGET POPULATION FILTERING
# ------------------------------------------------------------------------------
# Target Population Definition:
# - Industrial Engineering: CI1 and CI2 (Levels 1 & 2)
# - Computer Science: CI1 Only
# Action: Remove CI2 Computer Science students from the dataset.

data_clean <- subset(
  data,
  !(Filiere == "Génie Informatique" & Niveau == "CI2")
)

# Verification after filtering
table(data_clean$Filiere, data_clean$Niveau)
nrow(data_clean)
# ------------------------------------------------------------------------------
# 3.2 SPriority function for removing “Neutral” responses
# ------------------------------------------------------------------------------
#First removes all “Neutral” responses
#If insufficient, completes the removal by random selection

remove_neutral <- function(df, n_remove, var){
  
  # Identify neutral responses
  neutre <- df[df[[var]] == "Neutre", ]
  
  if(nrow(neutre) >= n_remove){
    # Case in which there are enough neutral responses "Neutre"
    df <- df[!(rownames(df) %in% rownames(neutre)[1:n_remove]), ]
  } else {
    # Case in which neutral responses are insufficient
    reste <- n_remove - nrow(neutre)
    
    # Removal of all neutral responses
    df <- df[!(rownames(df) %in% rownames(neutre)), ]
    
    # Random removal of the remaining number
    autres <- df[sample(nrow(df), reste), ]
    df <- df[!(rownames(df) %in% rownames(autres)), ]
  }
  
  return(df)
}


# ------------------------------------------------------------------------------
# 3.3 Stratified rebalancing
# ------------------------------------------------------------------------------
# A) CI1 Industrial Engineering: Remove 8 observations
ci1_indus <- subset(
  data_clean,
  Filiere == "Génie Industriel" & Niveau == "CI1"
)

ci1_indus <- remove_neutral(ci1_indus, 8, "hard_sk_1")

# B) CI1 Computer Science: Remove 4 observations
ci1_info <- subset(
  data_clean,
  Filiere == "Génie Informatique" & Niveau == "CI1"
)

ci1_info <- remove_neutral(ci1_info, 4, "hard_sk_1")
# C) CI2 Industrial Engineering: No removal needed (stratum fits quota)
ci2_indus <- subset(
  data_clean,
  Filiere == "Génie Industriel" & Niveau == "CI2"
)
# ------------------------------------------------------------------------------
# 3.4 FINAL MERGE & VERIFICATION
# ------------------------------------------------------------------------------

data_final <- rbind(ci2_indus, ci1_indus, ci1_info)

# ------------------------------------------------------------------------------
# 3.5 FINAL VERIFICATION
# ------------------------------------------------------------------------------

# Final sample size
nrow(data_final)

# Final distribution by program and level
table(data_final$Filiere, data_final$Niveau)

############################################################
#  DISPLAY AND VERIFICATION OF THE CLEANED DATASET
#  Object: data_final
#  Stage: After cleaning / Before conversion
############################################################
# 1) Display of the cleaned dataset (full visualization)
View(data_final)

# 2) Dataset dimensions
#    -> Checks that the final sample contains exactly 71 observations
dim(data_final)

# 3) Total number of observations
nrow(data_final)
# 4) Structure of the variables
#    -> Variable types (text, numeric, etc.)
str(data_final)

# 5) Final distribution by program and level
#    -> Proof of compliance with the sampling plan
table(data_final$Filiere, data_final$Niveau)

# 6) Verification of the variable used for filtering
#    -> Check of remaining categories (Neutral, Agree, etc.)
table(data_final$hard_sk_1)
# 7) Quick preview of the first rows
head(data_final)
############################################################
# - Balanced distribution by program and level
# - Dataset ready for conversion and analysis
############################################################

# ------------------------------------------------------------------------------
# 3.1 : TYPE CONVERSION AND CODING
# ------------------------------------------------------------------------------

# A. IDENTIFICATION AND CATEGORICAL VARIABLES
# Ensure that age is numeric for mean calculations
if(!is.numeric(data_final$Age)) {
  data_final$Age <- as.numeric(data_final$Age)
}

# --- GENDER CODING ---
# Conversion into a numeric binary variable (Male=1, Female=2) for analysis
if(!is.character(data_final$Sexe)) { data_final$Sexe <- as.character(data_final$Sexe) }
data_final$Sexe <- as.numeric(factor(data_final$Sexe, levels = c("H", "F"), ordered = TRUE))

# --- PROGRAM CODING ---
# Conversion into an ordered factor variable
if(!is.character(data_final$Filiere)) { data_final$Filiere <- as.character(data_final$Filiere) }
data_final$Filiere <- as.numeric(factor(data_final$Filiere, 
                                        levels = c("Génie Industriel", "Génie Informatique"), 
                                        ordered = TRUE))

# --- LEVEL CODING ---
# Conversion respecting the academic hierarchy (CI1 < CI2)
if(!is.character(data_final$Niveau)) { data_final$Niveau <- as.character(data_final$Niveau) }
data_final$Niveau <- as.numeric(factor(data_final$Niveau, 
                                       levels = c("CI1", "CI2"), 
                                       ordered = TRUE))

# --- PARTICIPATION CODING ---
# Binary conversion (No=1, Yes=2)
if(!is.character(data_final$participation_activites)) { 
  data_final$participation_activites <- as.character(data_final$participation_activites) 
}
data_final$participation_activites <- as.numeric(factor(data_final$participation_activites, 
                                                        levels = c("Non", "Oui"), 
                                                        ordered = TRUE))


# B. ORDINAL QUALITATIVE VARIABLES (LIKERT SCALE)
# Creation of a function to automate the conversion of the 20 items
# Objective: Convert text responses ("Agree") into numeric scores (4)

ordre_likert <- c("Pas du tout d’accord", "Pas d’accord", "Neutre", "D’accord", "Tout à fait d’accord")

convertir_likert <- function(colonne) {
  # 1. Enforce the hierarchical order of responses
  colonne_factor <- factor(colonne, levels = ordre_likert, ordered = TRUE)
  # 2. Convert ranks into numeric values (1 to 5)
  return(as.numeric(colonne_factor))
}

# Apply coding to the 5 questionnaire dimensions:

# 1. Hard Skills
data_final$hard_sk_1 <- convertir_likert(data_final$hard_sk_1)
data_final$hard_sk_2 <- convertir_likert(data_final$hard_sk_2)
data_final$hard_sk_3 <- convertir_likert(data_final$hard_sk_3)
data_final$hard_sk_4 <- convertir_likert(data_final$hard_sk_4)

# 2. Soft Skills
data_final$soft_sk_1 <- convertir_likert(data_final$soft_sk_1)
data_final$soft_sk_2 <- convertir_likert(data_final$soft_sk_2)
data_final$soft_sk_3 <- convertir_likert(data_final$soft_sk_3)
data_final$soft_sk_4 <- convertir_likert(data_final$soft_sk_4)

# 3. Professional Experience
data_final$prof_exp_1 <- convertir_likert(data_final$prof_exp_1)
data_final$prof_exp_2 <- convertir_likert(data_final$prof_exp_2)
data_final$prof_exp_3 <- convertir_likert(data_final$prof_exp_3)
data_final$prof_exp_4 <- convertir_likert(data_final$prof_exp_4)

# 4. Networking
data_final$prof_net_1 <- convertir_likert(data_final$prof_net_1)
data_final$prof_net_2 <- convertir_likert(data_final$prof_net_2)
data_final$prof_net_3 <- convertir_likert(data_final$prof_net_3)
data_final$prof_net_4 <- convertir_likert(data_final$prof_net_4)

# 5. Extracurricular Activities
data_final$extr_act_1 <- convertir_likert(data_final$extr_act_1)
data_final$extr_act_2 <- convertir_likert(data_final$extr_act_2)
data_final$extr_act_3 <- convertir_likert(data_final$extr_act_3)
data_final$extr_act_4 <- convertir_likert(data_final$extr_act_4)

str(data_final)
# ------------------------------------------------------------------------------
# 3.2 : DATA PROCESSING AND CLEANING
# ------------------------------------------------------------------------------

# --- 3.2.1 OUTLIER TREATMENT ---
# Method used: Interquartile Range (IQR).
# Values beyond 1.5 * IQR are considered outliers.

# Visualization (boxplot) before cleaning
boxplot(data_final$Age, 
        main = "Age distribution (Before cleaning)",
        ylab = "Age (Years)",
        col = "lightblue",
        border = "darkblue")

# Identification and replacement
aberrantes_age <- boxplot.stats(data_final$Age)$out

cat("Outliers detected for age:", aberrantes_age, "\n")
cat("Number of outliers:", length(aberrantes_age), "\n")

# Replacement
aberrantes_age <- boxplot.stats(data_final$Age)$out 

if (length(aberrantes_age) > 0) {
  # Loop through the data to replace outliers with NA
  for (i in 1:length(data_final$Age)) {
    if (!is.na(data_final$Age[i]) && data_final$Age[i] %in% aberrantes_age) { 
      data_final$Age[i] <- NA
    }
  }
}

# Visualization after cleaning
boxplot(data_final$Age, 
        main = "Age distribution (After cleaning)",
        ylab = "Age",
        col = "lightgreen",
        border = "darkgreen")

# --- 3.2.2 MISSING VALUE (NA) TREATMENT ---
# Decision rule:
# - If NA > 5%: Mean imputation (to avoid reducing the sample size).
# - If NA < 5%: Deletion or leaving as is (negligible impact).

# A. Treatment for the quantitative variable (Age)
nb_na <- sum(is.na(data_final$Age))
prop_na <- (nb_na / length(data_final$Age)) * 100
print(prop_na)

if (prop_na > 5) {
  moyenne_age <- mean(data_final$Age, na.rm = TRUE)
  # Mean imputation
  data_final$Age[is.na(data_final$Age)] <- moyenne_age
  # Round age to the nearest integer
  data_final$Age <- as.integer(data_final$Age)
}

# B. Treatment for categorical variables (Gender, Program, Level)
# For these variables, mean imputation is not possible.
# Individuals with missing values in these key fields are removed.

data_final <- data_final[!is.na(data_final$Sexe) & 
                           !is.na(data_final$Filiere) & 
                           !is.na(data_final$Niveau), ]


# ==============================================================================
# STEP 4 : EXPORT OF CLEAN DATA
# ==============================================================================

# Selection of relevant columns for final analysis
donnees_finales <- data_final[, c(
  "Age", "Sexe", "Filiere", "Niveau",
  "hard_sk_1", "hard_sk_2", "hard_sk_3", "hard_sk_4",
  "soft_sk_1", "soft_sk_2", "soft_sk_3", "soft_sk_4",
  "prof_exp_1", "prof_exp_2", "prof_exp_3", "prof_exp_4",
  "prof_net_1", "prof_net_2", "prof_net_3", "prof_net_4",
  "participation_activites",
  "extr_act_1", "extr_act_2", "extr_act_3", "extr_act_4"
)]

# Saving
write.csv(donnees_finales, "donnees_nettoyees_finales.csv", row.names = FALSE)

# ==============================================================================
#  STATISTICAL ANALYSIS - NORMALITY TESTS
# ==============================================================================

# Age test
cat("=== NORMALITY TEST FOR AGE ===\n\n")
# H0: The age variable follows a normal distribution
# H1: The age variable does not follow a normal distribution

# 1. Shapiro-Wilk Test
shapiro_result <- shapiro.test(data_final$Age)
cat("1. Shapiro-Wilk Test:\n")
cat("   W =", shapiro_result$statistic, "\n") # W= 0.8679304 !=1   0 < W < 1 measures how closely your data resembles a normal distribution. If W=1 -> NORMALITY
cat("   p-value =", shapiro_result$p.value, "\n") # p-value = 3.939179e-06 
sprintf("p-value = %.12f ",shapiro_result$p.value) # p-value = 0.000003939179 in decimal
if(shapiro_result$p.value < 0.05) {
  cat("    Conclusion: NOT strictly normal (p < 0.05)\n\n")
} else {
  cat("    Conclusion: NORMAL distribution (p >= 0.05)\n\n")
}
# Accept H1 -> There is a significant difference between the distribution and the theoretical normal distribution
# Age variable is not strictly normal -> check for quasi-normality

library(moments)  # For skewness and kurtosis

# 2. Skewness
skew <- skewness(data_final$Age, na.rm = TRUE)
cat("2. Skewness:\n")
cat("   Value =", round(skew, 3), "\n") # Value = 0.21 
# 3. Kurtosis
kurt <- kurtosis(data_final$Age, na.rm = TRUE)
cat("3. Kurtosis:\n")
cat("   Value =", round(kurt, 3), "\n") # Value = 2.432
# Skewness = 0.21 and Kurtosis = 2.432 are within [-3; +3] -> quasi-normality

# List of all items (NORMALITY TEST LOOP)

variables_to_test <- c(
  "hard_sk_1", "hard_sk_2", "hard_sk_3", "hard_sk_4",
  "soft_sk_1", "soft_sk_2", "soft_sk_3", "soft_sk_4",
  "prof_exp_1", "prof_exp_2", "prof_exp_3", "prof_exp_4",
  "prof_net_1", "prof_net_2", "prof_net_3", "prof_net_4",
  "extr_act_1", "extr_act_2", "extr_act_3", "extr_act_4"
)

cat("=== START OF NORMALITY TESTS ===\n\n")

for(var_name in variables_to_test) {
  
  # Safety check: Ensure the column exists and is numeric
  if (!is.null(data_final[[var_name]]) && is.numeric(data_final[[var_name]])) {
    
    cat("--------------------------------------------------\n")
    cat("VARIABLE:", var_name, "\n")
    
    # 1. Shapiro
    # Note: Shapiro may fail if all values are identical (e.g., everyone answered 5)
    tryCatch({
      shapiro <- shapiro.test(data_final[[var_name]])
      p_val <- shapiro$p.value
      stat_w <- shapiro$statistic
      
      cat("  > Shapiro: p-value =", sprintf("%.12f", p_val), "\n")
      
      # Shapiro decision
      status_shapiro <- ifelse(p_val > 0.05, "NORMAL DISTRIBUTION","NON-NORMAL DISTRIBUTION")
      cat("    Statistical Conclusion:", status_shapiro, "\n")
      
    }, error = function(e) {
      cat("  > Shapiro: Impossible (Zero variance or insufficient data)\n")
      p_val <- 0 # Force 0 for subsequent checks
    })
    
    # 2. Skewness & Kurtosis (Quasi-normality)
    skew <- skewness(data_final[[var_name]], na.rm = TRUE)
    kurt <- kurtosis(data_final[[var_name]], na.rm = TRUE)
    
    cat("  > Skewness             : ", round(skew, 3))
    if(abs(skew) < 1) cat(" (Good)\n") else cat(" (High)\n")
    
    cat("  > Kurtosis             : ", round(kurt, 3))
    if(abs(kurt) < 3) cat(" (Good)\n") else cat(" (High)\n")
    # Note: moments::kurtosis returns normal around 3
    # We check that it's not too extreme
    cat("\n")
    
    # 3. FINAL VERDICT (Quasi-normality)
    # Normality is accepted if p > 0.05 OR if Skewness and Kurtosis are reasonable
    # (Skewness between -3 and 3 is often accepted in social sciences)
    
    if (exists("p_val") && p_val > 0.05) {
      cat("  ==> FINAL RESULT: Normal distribution\n")
    } else if (abs(skew) < 1 && abs(kurt) < 3) {
      cat("  ==> FINAL RESULT: Quasi-normal distribution (acceptable for parametric tests)\n")
    } else {
      cat("  ==> FINAL RESULT: Non-normal distribution (use non-parametric tests)\n")
    }
    
    cat("\n")
    
  } else {
    cat("ERROR: Variable", var_name, "is not numeric or does not exist.\n")
  }
}

cat("=== END OF NORMALITY TESTS ===\n")
# ============================================================================
# RELIABILITY TEST - CRONBACH'S ALPHA
# ============================================================================
# install.packages("psych")
# Load the package
library(psych)
# Ensure that the columns exist and are numeric
class(data_final$Age)
class(data_final$Filiere)
class(data_final$Sexe)
class(data_final$`hard_sk_1`) # Hard_sk_1 item chosen arbitrarily

# This code checks the type (class) of certain columns in a dataframe `data`
# to ensure they exist and are numeric.
# This verification is essential to ensure the data is in the correct format before performing analyses.

# Create data frames for the items

# Check column names
cat("Available columns in your dataset:\n")
print(names(data_final))
cat("\n")

# The function names(data) displays the column names of the data frame.
# It also verifies that the columns we want to use (e.g., data$hard_sk_1, data$hard_sk_2, etc.) exist.
# This helps avoid errors and better understand the structure of the data frame before analysis.


# ============================================================================
# DIMENSION 1: TECHNICAL SKILLS (HARD SKILLS)
# ============================================================================

cat("\n========================================\n")
cat("DIMENSION 1: TECHNICAL SKILLS\n")
cat("========================================\n\n")

# Create a dataframe containing only hard skills items
items1 <- data.frame(
  data_final$hard_sk_1,
  data_final$hard_sk_2,
  data_final$hard_sk_3,
  data_final$hard_sk_4
)

# Create a dataframe containing only soft skills items
items2 <- data.frame(
  data_final$soft_sk_1,
  data_final$soft_sk_2,
  data_final$soft_sk_3,
  data_final$soft_sk_4
)

# Create a dataframe containing only professional experience items
items3 <- data.frame(
  data_final$prof_exp_1,
  data_final$prof_exp_2,
  data_final$prof_exp_3,
  data_final$prof_exp_4
)

# Create a dataframe containing only professional networking items
items4 <- data.frame(
  data_final$prof_net_1,
  data_final$prof_net_2,
  data_final$prof_net_3,
  data_final$prof_net_4
)

# Create a dataframe containing only extracurricular activities items
items5 <- data.frame(
  data_final$extr_act_1,
  data_final$extr_act_2,
  data_final$extr_act_3,
  data_final$extr_act_4
)

# psych::alpha(items, check.keys = TRUE)
# check.keys = TRUE -> automatically corrects reverse-coded items if needed
# na.rm = TRUE -> (optional) ignores missing values
# Compute Cronbach's alpha using psych::alpha to avoid conflicts
alpha_result0 <- psych::alpha(items1, check.keys=TRUE)
alpha_result1 <- psych::alpha(items2, check.keys=TRUE)
alpha_result2 <- psych::alpha(items3, check.keys=TRUE)
alpha_result3 <- psych::alpha(items4, check.keys=TRUE)
alpha_result4 <- psych::alpha(items5, check.keys=TRUE)

# Display results

# These lines display the results of Cronbach's alpha for each group. From these results:
# If alpha ≥ 0.6: The group is reliable, meaning the items are consistent.
# If alpha < 0.6: The group is not reliable.
print(alpha_result0)
# raw_alpha = 0.43 < 0.6 : No significant consistency among Hard Skills items
print(alpha_result1)
# raw_alpha = 0.66 > 0.6 : Acceptable consistency among Soft Skills items
print(alpha_result2)
# raw_alpha = 0.69 > 0.6 : Acceptable consistency among Professional Experience items
print(alpha_result3)
# raw_alpha = 0.63 > 0.6 : Acceptable consistency among Professional Networking items
print(alpha_result4)
# raw_alpha = 0.84 > 0.6 : Good consistency among Extracurricular Activities items
mean(c(0.43,0.66,0.69,0.63,0.84)) 
# 0.65 > 0.6 : Acceptable overall consistency

cat("\n\n################################################################################\n")
cat("    RELIABILITY SUMMARY AND NEXT STEPS\n")
cat("################################################################################\n\n")

cat("ALPHA SUMMARY:\n")
cat("  Hard Skills      : 0.43 (Insufficient but retained)\n")
cat("  Soft Skills      : 0.66 (Acceptable)\n")
cat("  Professional Exp : 0.69 (Acceptable)\n")
cat("  Professional Net : 0.63 (Acceptable)\n")
cat("  Extracurricular  : 0.84 (Good)\n")
cat("  MEAN             : 0.65 (Acceptable for exploratory research)\n\n")

cat("DECISION: Continue with all dimensions\n")
cat("=== END OF RELIABILITY TESTS ===\n")


# ============================================================================
# SAMPLE REPRESENTATIVENESS TEST
# ============================================================================

options(scipen = 999) # Prevents R from displaying numbers in scientific notation.

cat("################################################################################\n")
cat("              SAMPLE REPRESENTATIVENESS TEST\n")
cat("################################################################################\n\n")

cat("OBJECTIVE: Check if the sample accurately represents the total population\n")
cat("METHOD: Compare distributions of Major, Gender, and Age\n\n")


# ============================================================================
# STEP 1: DEFINE POPULATION DATA
# ============================================================================

cat("========================================\n")
cat("STEP 1: POPULATION DATA\n")
cat("========================================\n\n")


# TOTAL POPULATION
pop_total <- 204  # Total number of students at ENSAK

# MAJORS
# If you only have GI and GIND:
pop_gi <- 67      # Number of Computer Engineering students
pop_gind <- 137   # Number of Industrial Engineering students across both levels

# GENDER (TO ADAPT)
pop_men <- 80     # Number of men in the population
pop_women <- 124  # Number of women in the population

# AGE (TO ADAPT)
pop_mean_age <- 21  # Average age in the population, e.g., [19,23]

cat("POPULATION DATA:\n")
cat("  Total students :", pop_total, "\n")
cat("  GI              :", pop_gi, "(", round(100*pop_gi/(pop_gi+pop_gind), 1), "%)\n")
cat("  GIND            :", pop_gind, "(", round(100*pop_gind/(pop_gi+pop_gind), 1), "%)\n")
cat("  Men             :", pop_men, "(", round(100*pop_men/pop_total, 1), "%)\n")
cat("  Women           :", pop_women, "(", round(100*pop_women/pop_total, 1), "%)\n")
cat("  Mean age        :", pop_mean_age, "years\n\n")


# ============================================================================
# STEP 2: SAMPLE DATA
# ============================================================================

cat("========================================\n")
cat("STEP 2: SAMPLE DATA\n")
cat("========================================\n\n")
nrow(data_final)
# Sample size
n_sample <- nrow(data_final)

# Major distribution
table_major_sample <- table(data_final$Filiere) # 1 = GIND, 2 = GI
n_gi_sample <- as.numeric(table_major_sample["2"])
n_gind_sample <- as.numeric(table_major_sample["1"])

names(table_major_sample)

# Gender distribution
table_gender_sample <- table(data_final$Sexe)
n_men_sample <- as.numeric(table_gender_sample["1"])
n_women_sample <- as.numeric(table_gender_sample["2"])

# Mean age
mean_age_sample <- mean(data_final$Age, na.rm = TRUE)

cat("SAMPLE DATA:\n")
cat("  Size            :", n_sample, "\n")
cat("  Sampling rate   :", round(100*n_sample/pop_total, 1), "%\n")
cat("  GI              :", n_gi_sample, "(", round(100*n_gi_sample/n_sample, 1), "%)\n")
cat("  GIND            :", n_gind_sample, "(", round(100*n_gind_sample/n_sample, 1), "%)\n")
cat("  Men             :", n_men_sample, "(", round(100*n_men_sample/n_sample, 1), "%)\n")
cat("  Women           :", n_women_sample, "(", round(100*n_women_sample/n_sample, 1), "%)\n")
cat("  Mean age        :", round(mean_age_sample, 2), "years\n\n")


# ============================================================================
# STEP 3: REPRESENTATIVENESS TEST – MAJOR (FILIERE)
# ============================================================================

cat("\n")
cat("################################################################################\n")
cat("              TEST 1: MAJOR REPRESENTATIVENESS\n")
cat("################################################################################\n\n")

cat("Question: Does the GI/GIND distribution in the sample\n")
cat("          match that of the population?\n\n")

cat("VISUAL COMPARISON:\n")
cat("  Population  : GI ", round(100*pop_gi/(pop_gi+pop_gind), 1), "% | GIND ", 
    round(100*pop_gind/(pop_gi+pop_gind), 1), "%\n")
cat("  Sample      : GI ", round(100*n_gi_sample/n_sample, 1), "% | GIND ", 
    round(100*n_gind_sample/n_sample, 1), "%\n\n")

# Difference calculation
diff_gi <- abs(100*pop_gi/(pop_gi+pop_gind) - 100*n_gi_sample/n_sample)
cat("  Difference for GI : ±", round(diff_gi, 1), "percentage points\n\n")

# Chi-square test
cat("CHI-SQUARE TEST:\n")
cat("  H0: Sample has the same distribution as the population\n")
cat("  H1: Sample has a different distribution\n\n")

# Expected proportions
prop_gi <- pop_gi / (pop_gi + pop_gind)
prop_gind <- pop_gind / (pop_gi + pop_gind)

test_major <- chisq.test(table_major_sample, p = c(prop_gind, prop_gi))

cat("  χ² statistic =", round(test_major$statistic, 3), "\n")
cat("  p-value      =", sprintf("%.4f", test_major$p.value), "\n\n")

# Decision
if(test_major$p.value >= 0.05) {
  cat("CONCLUSION: Major IS REPRESENTATIVE (p ≥ 0.05)\n")
  cat("→ The GI/GIND distribution of the sample does not differ significantly\n")
  cat("  from the population. Results can be generalized.\n")
  decision_major <- "Representative"
} else {
  cat("CONCLUSION: Major IS NOT REPRESENTATIVE (p < 0.05)\n")
  cat("→ There is over-/under-representation of one major.\n")
  cat("  WARNING: Potential bias in generalizing results.\n")
  decision_major <- "Not representative"
}


# ============================================================================
# STEP 4: REPRESENTATIVENESS TEST – GENDER
# ============================================================================

cat("\n\n")
cat("################################################################################\n")
cat("              TEST 2: GENDER REPRESENTATIVENESS\n")
cat("################################################################################\n\n")

cat("Question: Does the H/F distribution in the sample\n")
cat("          match that of the population?\n\n")

cat("VISUAL COMPARISON:\n")
cat("  Population  : M ", round(100*pop_men/pop_total, 1), "% | F ", 
    round(100*pop_women/pop_total, 1), "%\n")
cat("  Sample      : M ", round(100*n_men_sample/n_sample, 1), "% | F ", 
    round(100*n_women_sample/n_sample, 1), "%\n\n")

# Difference calculation
diff_m <- abs(100*pop_men/pop_total - 100*n_men_sample/n_sample)
cat("  Difference for Men : ±", round(diff_m, 1), "percentage points\n\n")

# Chi-square test
cat("CHI-SQUARE TEST:\n")
cat("  H0: Sample has the same distribution as the population\n")
cat("  H1: Sample has a different distribution\n\n")

test_gender <- chisq.test(table_gender_sample, 
                          p = c(pop_men/pop_total, pop_women/pop_total))

cat("  χ² statistic =", round(test_gender$statistic, 3), "\n")
cat("  p-value      =", sprintf("%.4f", test_gender$p.value), "\n\n")

# Decision
if(test_gender$p.value >= 0.05) {
  cat("CONCLUSION: Gender IS REPRESENTATIVE (p ≥ 0.05)\n")
  cat("→ The H/F distribution of the sample does not differ significantly\n")
  cat("  from the population. No gender bias.\n")
  decision_gender <- "Representative"
} else {
  cat("CONCLUSION: Gender IS NOT REPRESENTATIVE (p < 0.05)\n")
  if(n_women_sample/n_sample > pop_women/pop_total) {
    cat("→ OVER-REPRESENTATION of women in the sample.\n")
  } else {
    cat("→ OVER-REPRESENTATION of men in the sample.\n")
  }
  cat("  WARNING: Gender bias should be reported.\n")
  decision_gender <- "Not representative"
}


# ============================================================================
# STEP 5: REPRESENTATIVENESS TEST – AGE
# ============================================================================

cat("\n\n")
cat("################################################################################\n")
cat("              TEST 3: AGE REPRESENTATIVENESS\n")
cat("################################################################################\n\n")

cat("Question: Does the mean age of the sample correspond\n")
cat("          to that of the population?\n\n")

cat("COMPARISON:\n")
cat("  Population mean age :", pop_mean_age, "years\n")
cat("  Sample mean age     :", round(mean_age_sample, 2), "years\n")
cat("  Difference          :", round(abs(mean_age_sample - pop_mean_age), 2), "years\n\n")

# Student t-test
cat("STUDENT T-TEST:\n")
cat("  H0: Sample mean = Population mean\n")
cat("  H1: Sample mean ≠ Population mean\n\n")

test_age <- t.test(data_final$Age, mu = pop_mean_age)

cat("  t statistic  =", round(test_age$statistic, 3), "\n")
cat("  p-value      =", sprintf("%.4f", test_age$p.value), "\n")
cat("  95% CI       : [", round(test_age$conf.int[1], 2), " ; ", 
    round(test_age$conf.int[2], 2), "]\n\n", sep="")
print(test_age$p.value)
# Decision
if(test_age$p.value >= 0.05) {
  cat("CONCLUSION: Age IS REPRESENTATIVE (p ≥ 0.05)\n")
  cat("→ The sample mean age does not differ significantly\n")
  cat("  from the population.\n")
  decision_age <- "Representative"
} else {
  cat("CONCLUSION: Age IS NOT REPRESENTATIVE (p < 0.05)\n")
  if(mean_age_sample > pop_mean_age) {
    cat("→ The sample is significantly OLDER than the population.\n")
  } else {
    cat("→ The sample is significantly YOUNGER than the population.\n")
  }
  cat("  WARNING: Age bias should be mentioned in the report.\n")
  decision_age <- "Not representative"
}


# ============================================================================
# STEP 6: OVERALL SUMMARY
# ============================================================================

# Summary table
summary_table <- data.frame(
  Variable = c("Major", "Gender", "Age"),
  Test = c("Chi-square", "Chi-square", "T-test"),
  P_value = round(c(test_major$p.value, 
                    test_gender$p.value, 
                    test_age$p.value), 4),
  Decision = c(decision_major, decision_gender, decision_age)
)

print(summary_table)

# Number of representative variables
n_rep <- sum(summary_table$Decision == "Representative")

# Overall conclusion
cat("\nSUMMARY: ", n_rep, "/3 representative variables\n")

if(n_rep == 3) {
  cat("→ Sample is overall REPRESENTATIVE\n")
} else if(n_rep == 2) {
  cat("→ Sample is PARTIALLY representative\n")
} else {
  cat("→ Sample is POORLY or NOT representative\n")
  
}

cat("=== END OF SAMPLE REPRESENTATIVENESS TESTS ===\n")

# ==============================================================================
# PART 5 – DATA PROCESSING AND ANALYSIS
# ==============================================================================
############################################################
# This section includes:
# - Descriptive statistics (univariate and bivariate)
# - Hypothesis testing (inferential statistics)
# - Factor analysis
# - Regression / classification
############################################################


############################################################
# 5.1 UNIVARIATE DESCRIPTIVE STATISTICS
# Objective:
# Describe each variable individually to understand
# general characteristics of the sample.
############################################################



############################
# 5.1.1 QUANTITATIVE VARIABLES
############################

# --- Age ---

# Descriptive statistics
summary(data_final$Age)
mean(data_final$Age, na.rm = TRUE)
sd(data_final$Age, na.rm = TRUE)

# Histogram (distribution)
hist(data_final$Age,
     main = "Age Distribution of Respondents",
     xlab = "Age (years)",
     ylab = "Frequency",
     col = "lavender",
     border = "black")

# Boxplot (visual detection of outliers)
boxplot(data_final$Age,
        main = "Boxplot of Age",
        ylab = "Age",
        col = "palegreen")


############################
# 5.1.2 QUALITATIVE VARIABLES
############################

# --- Gender ---
table(data_final$Sexe)

# Pie chart
pie(table(data_final$Sexe),
    main = "Gender Distribution of Respondents",
    col = c("lightblue", "lightpink"))



# --- Major ---
table(data_final$Filiere)

barplot(table(data_final$Filiere),
        main = "Distribution of Students by Major",
        ylab = "Count",
        col = "lightblue")

# Pie chart
pie(table(data_final$Filiere),
    main = "Distribution of Students by Major",
    col = c("lightpink","lightgreen"))


# --- Level ---
table(data_final$Niveau)

barplot(table(data_final$Niveau),
        main = "Distribution of Students by Level",
        ylab = "Count",
        col = "lightgreen")

# Pie chart 
pie(table(data_final$Niveau),
    main = "Distribution of Students by Level",
    col = c("lightskyblue", "khaki"))



############################
# 5.1.3 ORDINAL VARIABLES (LIKERT SCALE)
############################

# Example: Hard Skills 1
summary(data_final$hard_sk_1)

# Bar plot
barplot(table(data_final$hard_sk_1),
        main = "Response Distribution – Hard Skills 1",
        xlab = "Score",
        ylab = "Count",
        col = "lightcoral")

# Boxplot (dispersion comparison)
boxplot(data_final$hard_sk_1,
        main = "Boxplot – Hard Skills 1",
        ylab = "Score",
        col = "lightyellow")


# Example: Soft Skills 1
summary(data_final$soft_sk_1)

barplot(table(data_final$soft_sk_1),
        main = "Response Distribution – Soft Skills 1",
        xlab = "Score",
        ylab = "Count",
        col = "lightskyblue")

boxplot(data_final$soft_sk_1,
        main = "Boxplot – Soft Skills 1",
        ylab = "Score",
        col = "lightpink")

############################################################
# 5.2 BIVARIATE DESCRIPTIVE STATISTICS
# Objective:
# Study the relationship between two variables without
# making formal statistical inferences yet.
############################################################

############################
# 5.2.1 QUALITATIVE × QUALITATIVE
############################

# Relationship between Major and Level
table_major_level <- table(data_final$Filiere, data_final$Niveau)
table_major_level

# Grouped bar plot
barplot(table_major_level,
        beside = TRUE,
        main = "Major / Level Distribution",
        xlab = "Level",
        ylab = "Count",
        legend = TRUE,
        col = c("lightblue", "lightgreen"))


# Relationship between Major and Participation in Activities
table_major_participation <- table(
  data_final$Filiere,
  data_final$participation_activites
)
table_major_participation

barplot(table_major_participation,
        beside = TRUE,
        main = "Major vs Activity Participation",
        xlab = "Participation",
        ylab = "Count",
        legend = TRUE,
        col = c("lightcoral", "lightgray"))


############################
# 5.2.2 QUALITATIVE × QUANTITATIVE
############################

# Compare Hard Skills score by Level
aggregate(hard_sk_1 ~ Niveau,
          data = data_final,
          mean)

# Comparative boxplot
boxplot(hard_sk_1 ~ Niveau,
        data = data_final,
        main = "Hard Skills by Level",
        xlab = "Level",
        ylab = "Hard Skills Score",
        col = c("lightyellow", "lightblue"))


# Compare Soft Skills score by Major
aggregate(soft_sk_1 ~ Filiere,
          data = data_final,
          mean)

boxplot(soft_sk_1 ~ Filiere,
        data = data_final,
        main = "Soft Skills by Major",
        xlab = "Major",
        ylab = "Soft Skills Score",
        col = c("lightgreen", "lightpink"))


############################
# 5.2.3 QUANTITATIVE × QUANTITATIVE
############################

# Relationship between Age and Hard Skills
plot(data_final$Age, data_final$hard_sk_1,
     main = "Relationship between Age and Hard Skills",
     xlab = "Age",
     ylab = "Hard Skills Score",
     pch = 19)

# Add trend line
abline(lm(hard_sk_1 ~ Age, data = data_final),
       col = "red")

##############################################################################
# 5.3 : HYPOTHESIS TESTING
##############################################################################

cat("========================================\n")
cat("5.3.1: GENERAL HYPOTHESIS TESTING\n")
cat("========================================\n\n")

# =====================
# a) INTRODUCTION
# =====================
cat("Introduction: Verify hypotheses for Likert items and numeric/categorical variables.\n\n")

# =====================
# b) GLOBAL TEST FOR LIKERT ITEMS
# =====================

cat("--------------------------------------------------\n")
cat(" Global test for perception items (Likert)\n")
cat("--------------------------------------------------\n\n")

# List of all Likert items
items_likert <- c(
  "hard_sk_1","hard_sk_2","hard_sk_3","hard_sk_4",
  "soft_sk_1","soft_sk_2","soft_sk_3","soft_sk_4",
  "prof_exp_1","prof_exp_2","prof_exp_3","prof_exp_4",
  "prof_net_1","prof_net_2","prof_net_3","prof_net_4",
  "extr_act_1","extr_act_2","extr_act_3","extr_act_4"
)

# Function to test each item
tester_item <- function(df, item) {
  
  responses <- df[[item]]
  
  # Count categories
  counts <- table(responses)
  
  # Percentage neutral
  pct_neutral <- ifelse("3" %in% names(counts), counts["3"]/sum(counts)*100, 0)
  
  # Check if Neutral > 20%
  if(pct_neutral > 20) {
    verdict <- "Neutral > 20%: No decision possible"
  } else {
    # Chi-square test: H0 = uniform distribution
    test <- chisq.test(counts)
    
    # Check if agreement (4+5) > disagreement (1+2)
    agree <- sum(responses %in% c(4,5))
    disagree <- sum(responses %in% c(1,2))
    
    if(test$p.value < 0.05 & agree > disagree) {
      verdict <- "Hypothesis accepted (Agreement > Disagreement)"
    } else if(test$p.value < 0.05 & disagree > agree) {
      verdict <- "Hypothesis rejected (Disagreement > Agreement)"
    } else {
      verdict <- "No significant difference"
    }
  }
  
  cat("Item:", item, "\n")
  cat("  % Neutral =", round(pct_neutral,1), "%\n")
  cat("  Verdict:", verdict, "\n\n")
}

# Apply to all items
for(item in items_likert) {
  tester_item(data_final, item)
}

# =====================
# 5.3.2 COMPARATIVE TESTS ON CATEGORICAL VARIABLES
# =====================
cat("--------------------------------------------------\n")
cat(" Comparative tests on categorical variables\n")
cat("--------------------------------------------------\n\n")

# Example: Hard Skills 1 by Major
tab <- table(data_final$Filiere, data_final$hard_sk_1)
cat("Hard Skills 1 by Major:\n")
print(tab)
cat("\n")

# Check for low counts
if(any(tab < 5)) {
  cat("  > Some cells have counts <5, using Fisher's exact test\n")
  test_result <- fisher.test(tab)
} else {
  cat("  > Counts sufficient, using Chi-square test\n")
  test_result <- chisq.test(tab)
}

cat("p-value =", sprintf("%.5f", test_result$p.value), "\n")

# Decision
if(test_result$p.value < 0.05) {
  cat("  ==> Hypothesis: REJECTED (significant difference)\n")
} else {
  cat("  ==> Hypothesis: ACCEPTED (no significant difference)\n")
}

# =====================
# 5.3.3 NUMERIC VARIABLE TESTS
# =====================
cat("--------------------------------------------------\n")
cat(" Tests on numeric variables\n")
cat("--------------------------------------------------\n\n")

# Compare mean Hard Skills by Level (ANOVA)
anova_result <- aov(hard_sk_1 ~ Niveau, data = data_final)
cat("ANOVA Hard Skills 1 by Level:\n")
print(summary(anova_result))
cat("\n")

# Correlation Age and Hard Skills
cor_test <- cor.test(data_final$Age, data_final$hard_sk_1, 
                     method = "spearman", exact = FALSE)
cat("Correlation Age vs Hard Skills 1:\n")
cat("  rho =", round(cor_test$estimate,3), "p-value =", cor_test$p.value, "\n")
if(cor_test$p.value < 0.05) {
  cat("  Conclusion: Significant correlation\n\n")
} else {
  cat("  Conclusion: No significant correlation\n\n")
}
# ==============================================================================
# 5.4 FACTOR ANALYSIS
# ==============================================================================

library(psych)  # For PCA and EFA
library(GPArotation) # For varimax rotation

cat("========================================\n")
cat("5.4 : FACTOR ANALYSIS\n")
cat("========================================\n\n")

# Select numeric items for factor analysis
# Here, all Likert dimensions
items_all <- data_final[, c(
  "hard_sk_1","hard_sk_2","hard_sk_3","hard_sk_4",
  "soft_sk_1","soft_sk_2","soft_sk_3","soft_sk_4",
  "prof_exp_1","prof_exp_2","prof_exp_3","prof_exp_4",
  "prof_net_1","prof_net_2","prof_net_3","prof_net_4",
  "extr_act_1","extr_act_2","extr_act_3","extr_act_4"
)]

# Correlation check
cor_matrix <- cor(items_all, use = "pairwise.complete.obs")
cat("Correlation matrix calculated\n\n")

# Kaiser-Meyer-Olkin (KMO) test
kmo_result <- KMO(cor_matrix)
print(kmo_result)
cat("\n> Overall KMO:", round(kmo_result$MSA, 3), "\n")
if(kmo_result$MSA < 0.6) {
  cat("  WARNING: Low KMO, PCA may not be appropriate\n\n")
}

# Bartlett's sphericity test
bartlett_result <- cortest.bartlett(cor_matrix, n = nrow(items_all))
print(bartlett_result)
cat("\n")

# Determine number of factors using Kaiser criterion (eigenvalues > 1)
eigenvalues <- eigen(cor_matrix)$values
cat("Eigenvalues:\n")
print(round(eigenvalues, 3))
n_factors <- sum(eigenvalues > 1)
cat("Number of factors retained:", n_factors, "\n\n")

# PCA with varimax rotation
fa_result <- fa(items_all, nfactors = n_factors, rotate = "varimax", fm = "ml")
print(fa_result$loadings, cutoff = 0.4)  # Show loadings > 0.4

cat("\n> Interpretation: Items cluster according to main dimensions\n")
cat("  (Hard Skills, Soft Skills, Professional Experience, Network, Extracurricular Activities)\n\n")
# ==============================================================================
# 5.5 REGRESSION
# ==============================================================================

cat("========================================\n")
cat("5.5 : LINEAR REGRESSION\n")
cat("========================================\n\n")

# Objective: predict overall Hard Skills (mean) from other dimensions
data_final$hard_sk_mean <- rowMeans(data_final[, c("hard_sk_1","hard_sk_2","hard_sk_3","hard_sk_4")])
data_final$soft_sk_mean <- rowMeans(data_final[, c("soft_sk_1","soft_sk_2","soft_sk_3","soft_sk_4")])
data_final$prof_exp_mean <- rowMeans(data_final[, c("prof_exp_1","prof_exp_2","prof_exp_3","prof_exp_4")])
data_final$prof_net_mean <- rowMeans(data_final[, c("prof_net_1","prof_net_2","prof_net_3","prof_net_4")])
data_final$extr_act_mean <- rowMeans(data_final[, c("extr_act_1","extr_act_2","extr_act_3","extr_act_4")])

# Linear regression model
reg_model <- lm(hard_sk_mean ~ soft_sk_mean + prof_exp_mean + prof_net_mean + extr_act_mean, data = data_final)
summary_reg <- summary(reg_model)

print(summary_reg)

cat("\n> Check p-values for each predictor:\n")
signif_vars <- summary_reg$coefficients[,4] < 0.05
print(signif_vars)

cat("\n> Interpretation:\n")
cat("  - Variables with p < 0.05 are significant predictors of Hard Skills\n")
cat("  - R² =", round(summary_reg$r.squared,3), "indicates the proportion of explained variance\n\n")


