FROM openjdk:11.0.14.1
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=test_my_javabot1_bot
ENV BOT_TOKEN=5179702201:AAGfThmJp5RviE95DEHWRwiqrtcDtWsf900
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dbot.username=${BOT_NAME}", "-Dbot.token=${BOT_TOKEN}", "-jar", "/app.jar"]