FROM mcr.microsoft.com/dotnet/aspnet:8.0.8-jammy-chiseled@sha256:5c45f155c472500e3cb8b6c05ef63efe0a2a8c5cbb6f293438a0b1bd43c2efc8

LABEL org.opencontainers.image.title="HX Aura Training Demo API" \
	  org.opencontainers.image.source="https://github.com/HylandExperience/hx-aura-training-demo" \
	  org.opencontainers.image.created=$BUILD_DATE \
	  org.opencontainers.image.revision=$COMMIT_SHA \
	  org.opencontainers.image.url=$BUILD_URL

WORKDIR /app

ENTRYPOINT ["dotnet", "hx-aura-learning.dll"]