FROM microsoft/dotnet:2.1-runtime
# ARG BUILD_ENV

COPY out .

# ENV ASPNETCORE_ENVIRONMENT=$BUILD_ENV
ENV ASPNETCORE_URLS http://0.0.0.0:5000

EXPOSE 5000

CMD ["dotnet", "tc-dotnetcore.dll"]