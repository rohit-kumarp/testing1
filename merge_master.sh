branch=$1
echo "*** Pull Request branch is : \"$branch\" ***"
echo "*** creating temp branch with Pull Request & Merge with Latest Master"

if [ -z "$branch" ]; then
  echo "*** error: Failed to get PR branch *** "
  exit 1
fi

if git checkout $branch; then
	git fetch origin $branch && git merge FETCH_HEAD --no-ff  --no-edit
else
 git checkout -b $branch
  echo "*** error: Failed to create temp branch ***"
  exit 1
fi


if ! git fetch origin master && git merge FETCH_HEAD --no-ff  --no-edit; then
  echo "*** error: Failed to merge with latest branch ***"
  exit 1
fi

echo "*** pushing ${branch} to git repo with master ***"

if ! git push https://github.com/rohitAutomation/testing1.git ${Branch}; then
  echo "*** error: Failed to push temp branch \"${branch}\" in git repo ***"
  exit 1
fi

echo "*** Successfully Pushed PR temp branch \"${branch}\""