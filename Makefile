#Makefile for deploying flutter web app to github pages

BASE_HREF = '/portfolio_site/'
GITHUB_REPO = https://github.com/sulavkarki7/portfolio_site.git
BUILD_VERSION :=  $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')

deploy-web:
@echo "Clean existing respository..."
flutter Clean

@echo "Getting packages..."
flutter pub get 

@echo "Building for web..."
flutter build web --base-href $(BASE_HREF) --release

@"Creating CNAME file..."
echo "www.sulavkarki7.com.np" > build/web/CNAME

@echo "Deploying to Git repository..."
cd build/web && \
git init && \
git add. && \
git commit -m 'Deploy Version $(BUILD_VERSION)' && \
git branch -M main && \
git remote add origin $(GITHUB_REPO) && \
git push -u --force origin main

cd ../..
@echo "Deployment completed successfully!"

.PHONY: deploy-web



