.PHONY: deploy
deploy:
	@aws s3 cp ./dist/ s3://www.adam-hanna.me/ --recursive --exclude *.DS_Store --exclude *.swp && aws cloudfront create-invalidation --distribution-id E2AIT9TLGN11U0 --paths /index.html
