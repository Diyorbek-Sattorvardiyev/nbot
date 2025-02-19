# JDK 21-ni asosiy rasm sifatida olish
FROM openjdk:21-jdk-slim

# Jar faylini konteynerga nusxalash
COPY ./your-bot.jar /usr/app/your-bot.jar

# Kerakli portni ochish (agar kerak bo'lsa)
EXPOSE 8080

# Java yordamida botni ishga tushirish
CMD ["java", "-jar", "/usr/app/librarybot.jar"]
